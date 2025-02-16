import numpy as np
import tensorflow as tf
import gym
import time
import spinup.algos.ppo_pyco.core as core
import matplotlib.pyplot as plt
from gym.spaces import Box, Discrete
from spinup.utils.logx import EpochLogger
from spinup.utils.mpi_tf import MpiAdamOptimizer, sync_all_params
from spinup.utils.mpi_tools import mpi_fork, mpi_avg, proc_id, mpi_statistics_scalar, num_procs
from spinup.utils.logx import restore_tf_graph


from tensorflow.python import debug as tf_debug



class PPOBuffer:
    """
    A buffer for storing trajectories experienced by a PPO agent interacting
    with the environment, and using Generalized Advantage Estimation (GAE-Lambda)
    for calculating the advantages of state-action pairs.
    """

    def __init__(self, gym_or_pyco, obs_dim, act_dim, size, gamma=0.99, lam=0.95):
        # self.obs_buf = np.zeros(core.combined_shape(size, obs_dim), dtype=np.float32)
        if gym_or_pyco == 'pyco':
            self.obs_buf = np.zeros((size, obs_dim[0], obs_dim[1], 1), dtype=np.float32)
        else:
            self.obs_buf = np.zeros((size, obs_dim[0], obs_dim[1], obs_dim[2]), dtype=np.float32)
        self.act_buf = np.zeros(core.combined_shape(size, act_dim), dtype=np.float32)
        self.adv_buf = np.zeros(size, dtype=np.float32)
        self.rew_buf = np.zeros(size, dtype=np.float32)
        self.ret_buf = np.zeros(size, dtype=np.float32)
        self.val_buf = np.zeros(size, dtype=np.float32)
        self.logp_buf = np.zeros(size, dtype=np.float32)
        self.gamma, self.lam = gamma, lam
        self.ptr, self.path_start_idx, self.max_size = 0, 0, size

    def store(self, obs, act, rew, val, logp):
        """
        Append one timestep of agent-environment interaction to the buffer.
        """
        assert self.ptr < self.max_size  # buffer has to have room so you can store
        self.obs_buf[self.ptr] = obs
        self.act_buf[self.ptr] = act
        self.rew_buf[self.ptr] = rew
        self.val_buf[self.ptr] = val
        self.logp_buf[self.ptr] = logp
        self.ptr += 1

    def finish_path(self, last_val=0):
        """
        Call this at the end of a trajectory, or when one gets cut off
        by an epoch ending. This looks back in the buffer to where the
        trajectory started, and uses rewards and value estimates from
        the whole trajectory to compute advantage estimates with GAE-Lambda,
        as well as compute the rewards-to-go for each state, to use as
        the targets for the value function.

        The "last_val" argument should be 0 if the trajectory ended
        because the agent reached a terminal state (died), and otherwise
        This allows us to bootstrap the reward-to-go calculation to account
        for timesteps beyond the arbitrary episode horizon (or epoch cutoff).
        """

        path_slice = slice(self.path_start_idx, self.ptr)
        rews = np.append(self.rew_buf[path_slice], last_val)
        vals = np.append(self.val_buf[path_slice], last_val)

        # the next two lines implement GAE-Lambda advantage calculation
        deltas = rews[:-1] + self.gamma * vals[1:] - vals[:-1]
        self.adv_buf[path_slice] = core.discount_cumsum(deltas, self.gamma * self.lam)

        # the next line computes rewards-to-go, to be targets for the value function
        self.ret_buf[path_slice] = core.discount_cumsum(rews, self.gamma)[:-1]

        self.path_start_idx = self.ptr

    def get(self):
        """
        Call this at the end of an epoch to get all of the data from
        the buffer, with advantages appropriately normalized (shifted to have
        mean zero and std one). Also, resets some pointers in the buffer.
        """
        assert self.ptr == self.max_size  # buffer has to be full before you can get
        self.ptr, self.path_start_idx = 0, 0
        # the next two lines implement the advantage normalization trick
        adv_mean, adv_std = mpi_statistics_scalar(self.adv_buf)
        self.adv_buf = (self.adv_buf - adv_mean) / adv_std
        return [self.obs_buf, self.act_buf, self.adv_buf,
                self.ret_buf, self.logp_buf]


def rgb_input_pyco(o, obs_dim):
    A = np.zeros((obs_dim[0], obs_dim[1], 1))
    o = o.board
    return o
    for i in range(A.shape[0]):
        for j in range(A.shape[1]):
            if o[i, j] == 32:
                A[i, j, :] = (870, 838, 678)
            elif o[i, j] == 35:
                A[i, j, :] = (428, 135, 0)
            elif o[i, j] == 46:
                A[i, j, :] = (39, 208, 67)
            elif o[i, j] == 49 or 50 or 51 or 52 or 53:
                A[i, j, :] = (729, 394, 51)
            elif o[i, j] == 95:
                A[i, j, :] = (834, 588, 525)
            elif o[i, j] == 80:
                A[i, j, :] = (388, 400, 999)
            elif o[i, j] == 88:
                A[i, j, :] = (850, 603, 270)
    o = A
    # return o


"""

Proximal Policy Optimization (by clipping), 

with early stopping based on approximate KL

"""


def ppo_pyco_load(gym_or_pyco, env_fn, actor_critic=core.mlp_actor_critic, ac_kwargs=dict(), seed=435,
             steps_per_epoch=4000, epochs=50000, gamma=0.99, clip_ratio=0.1, pi_lr=3e-4,
             vf_lr=3e-4, train_pi_iters=80, train_v_iters=80, lam=0.97, max_ep_len=350,
             target_kl=0.01, logger_kwargs=dict(), save_freq=10, tensorboard_path = '/home/clement/spinningup/tensorboard'):
    """

    Args:
        env_fn : A function which creates a copy of the environment.
            The environment must satisfy the OpenAI Gym API.

        actor_critic: A function which takes in placeholder symbols
            for state, ``model['x']``, and action, ``model['pi']``, and returns the main
            outputs from the agent's Tensorflow computation graph:

            ===========  ================  ======================================
            Symbol       Shape             Description
            ===========  ================  ======================================
            ``pi``       (batch, act_dim)  | Samples actions from policy given
                                           | states.
            ``logp``     (batch,)          | Gives log probability, according to
                                           | the policy, of taking actions ``model['pi']``
                                           | in states ``model['x']``.
            ``logp_pi``  (batch,)          | Gives log probability, according to
                                           | the policy, of the action sampled by
                                           | ``pi``.
            ``v``        (batch,)          | Gives the value estimate for states
                                           | in ``model['x']``. (Critical: make sure
                                           | to flatten this!)
            ===========  ================  ======================================

        ac_kwargs (dict): Any kwargs appropriate for the actor_critic
            function you provided to PPO.

        seed (int): Seed for random number generators.

        steps_per_epoch (int): Number of steps of interaction (state-action pairs)
            for the agent and the environment in each epoch.

        epochs (int): Number of epochs of interaction (equivalent to
            number of policy updates) to perform.

        gamma (float): Discount factor. (Always between 0 and 1.)

        clip_ratio (float): Hyperparameter for clipping in the policy objective.
            Roughly: how far can the new policy go from the old policy while
            still profiting (improving the objective function)? The new policy
            can still go farther than the clip_ratio says, but it doesn't help
            on the objective anymore. (Usually small, 0.1 to 0.3.)

        pi_lr (float): Learning rate for policy optimizer.

        vf_lr (float): Learning rate for value function optimizer.

        train_pi_iters (int): Maximum number of gradient descent steps to take
            on policy loss per epoch. (Early stopping may cause optimizer
            to take fewer than this.)

        train_v_iters (int): Number of gradient descent steps to take on
            value function per epoch.

        lam (float): Lambda for GAE-Lambda. (Always between 0 and 1,
            close to 1.)

        max_ep_len (int): Maximum length of trajectory / episode / rollout.

        target_kl (float): Roughly what KL divergence we think is appropriate
            between new and old policies after an update. This will get used
            for early stopping. (Usually small, 0.01 or 0.05.)

        logger_kwargs (dict): Keyword args for EpochLogger.

        save_freq (int): How often (in terms of gap between epochs) to save
            the current policy and value function.
        tensorboard_path: The path to the saved graphs&scalars in tensorboard


    """

    logger = EpochLogger(**logger_kwargs)
    logger.save_config(locals())

    #seed += 10000 * proc_id()
    seed = 2808
    tf.set_random_seed(seed)
    np.random.seed(seed)
    dict_continous_gym = ['CarRacing', 'LunarLander','Pong','AirRaid','Adventure', 'AirRaid', 'Alien', 'Amidar',
                          'Assault', 'Asterix', 'Asteroids', 'Atlantis',
        'BankHeist', 'BattleZone', 'BeamRider', 'Berzerk', 'Bowling', 'Boxing', 'Breakout', 'Carnival',
        'Centipede', 'ChopperCommand', 'CrazyClimber', 'Defender', 'Demon_attack', 'DoubleDunk',
        'ElevatorAction', 'Enduro', 'FishingDerby', 'Freeway', 'Frostbite', 'Gopher', 'Gravitar',
        'Hero', 'IceHockey', 'Jamesbond', 'JourneyEscape', 'Kangaroo', 'Krull', 'KungFuMaster',
        'MpntezumaRevenge', 'MsPacman', 'NameThisGame', 'Phoenix', 'Pitfall', 'Pooyan',
        'PrivateEye', 'Qbert', 'Riverraid', 'RoadRunner', 'Robotank', 'Seaquest', 'Skiing',
        'Solaris', 'SpaceInvaders', 'StarGunner', 'Tennis', 'TimePilot', 'Tutankham', 'UpNDown',
        'Venture', 'VideoPinball', 'WizardOfWor', 'VarsRevenge', 'Zaxxon','Numberlink']
    dict_discrete_gym = []

    env = env_fn()
    dict_gym = ['CarRacing', 'LunarLander','Pong','AirRaid','Adventure', 'AirRaid', 'Alien', 'Amidar',
                          'Assault', 'Asterix', 'Asteroids', 'Atlantis',
        'BankHeist', 'BattleZone', 'BeamRider', 'Berzerk', 'Bowling', 'Boxing', 'Breakout', 'Carnival',
        'Centipede', 'ChopperCommand', 'CrazyClimber', 'Defender', 'Demon_attack', 'DoubleDunk',
        'ElevatorAction', 'Enduro', 'FishingDerby', 'Freeway', 'Frostbite', 'Gopher', 'Gravitar',
        'Hero', 'IceHockey', 'Jamesbond', 'JourneyEscape', 'Kangaroo', 'Krull', 'KungFuMaster',
        'MpntezumaRevenge', 'MsPacman', 'NameThisGame', 'Phoenix', 'Pitfall', 'Pooyan',
        'PrivateEye', 'Qbert', 'Riverraid', 'RoadRunner', 'Robotank', 'Seaquest', 'Skiing',
        'Solaris', 'SpaceInvaders', 'StarGunner', 'Tennis', 'TimePilot', 'Tutankham', 'UpNDown',
        'Venture', 'VideoPinball', 'WizardOfWor', 'VarsRevenge', 'Zaxxon','Numberlink']
    # This code is specific for pycolab
    if gym_or_pyco == 'gym':
        None
    else:
        env = env()

    obs_dim = env.observation_space.shape
    if env.action_space == 4:
        act_dim = env.action_space
    try:
        act_dim = env.action_space.n
    except:
        act_dim = env.action_space.shape




    #act_dim = env.action_space.shape

    # Share information about action space with policy architecture
    ac_kwargs['action_space'] = env.action_space

    #Trying to restore graph
    sess = tf.Session()
    export_dir = "/home/clement/Documents/spinningup_instadeep/data/cmd_ppo_pyco/cmd_ppo_pyco_s0/simple_save"
    model = restore_tf_graph(sess, export_dir)

    adv_ph, ret_ph, logp_old_ph = core.placeholders(None, None, None)



    # Main outputs from computation graph
    # pi, logp, logp_pi, v, logits = actor_critic(model['x'], model['pi'], **ac_kwargs)
    # actor_critic with relational policy
    # pi, logp, logp_pi, v, logits = actor_critic(model['x'], model['pi'], policy='relational_categorical_policy', action_space = env.action_space.n,  **ac_kwargs)
    if gym_or_pyco == 'gym' and isinstance(env.action_space, Discrete):
        pi, logp, logp_pi, v, logits = actor_critic(model['x'], model['pi'], policy='baseline_categorical_policy',
                                                    action_space=env.action_space.n)
    elif gym_or_pyco == 'gym' and isinstance(env.action_space, Box):
        pi, logp, logp_pi, v = actor_critic(model['x'], model['pi'], policy='baseline_gaussian_policy',
                                            action_space=env.action_space.shape[0])
    else:
        pi, logp, logp_pi, v, logits = actor_critic(model['x'], model['pi'], policy='relational_categorical_policy',
                                                    action_space=env.action_space.n)
    # PPO objectives
    ratio = tf.exp(logp - logp_old_ph)  # pi(a|s) / pi_old(a|s)
    min_adv = tf.where(adv_ph > 0, (1 + clip_ratio) * adv_ph, (1 - clip_ratio) * adv_ph)
    pi_loss = -tf.reduce_mean(tf.minimum(ratio * adv_ph, min_adv))

    # Need all placeholders in *this* order later (to zip with data from buffer)
    all_phs = [model['x'], model['pi'], adv_ph, ret_ph, logp_old_ph]

    # Every step, get: action, value, and logprob
    get_action_ops = [pi, v, logp_pi]

    # Experience buffer
    local_steps_per_epoch = int(steps_per_epoch / num_procs())
    buf = PPOBuffer(gym_or_pyco, obs_dim, act_dim, local_steps_per_epoch, gamma, lam)

    # Count variables
    var_counts = tuple(core.count_vars(scope) for scope in ['pi', 'v'])
    logger.log('\nNumber of parameters: \t pi: %d, \t v: %d\n' % var_counts)



    # tensorboard test
    with tf.name_scope('pi_loss'):
        core.variable_summaries(pi_loss)

    v_loss = tf.reduce_mean((ret_ph - v) ** 2)


    # Info (useful to watch during learning)
    approx_kl = tf.reduce_mean(logp_old_ph - logp)  # a sample estimate for KL-divergence, easy to compute
    approx_ent = tf.reduce_mean(-logp)  # a sample estimate for entropy, also easy to compute
    clipped = tf.logical_or(ratio > (1 + clip_ratio), ratio < (1 - clip_ratio))
    clipfrac = tf.reduce_mean(tf.cast(clipped, tf.float32))

    # Optimizers
    train_pi = MpiAdamOptimizer(learning_rate=pi_lr).minimize(pi_loss)
    train_v = MpiAdamOptimizer(learning_rate=vf_lr).minimize(v_loss)


    # tensorboard
    merged = tf.summary.merge_all()
    train_writer = tf.summary.FileWriter(tensorboard_path + '/train',
                                         sess.graph)
    test_writer = tf.summary.FileWriter(tensorboard_path + '/test')

    sess.run(tf.global_variables_initializer())
    # saver.restore(sess, "/home/clement/Documents/spinningup_instadeep/trained_params/model.ckpt")
    #saver.restore(sess, "/home/clement/Documents/spinningup_instadeep/data/cmd_ppo_pyco/cmd_ppo_pyco_s0/simple_save")

    #tf.reset_default_graph()
    #export_dir = "/home/clement/Documents/spinningup_instadeep/data/cmd_ppo_pyco/cmd_ppo_pyco_s0/simple_save"
    #tf.saved_model.loader.load(sess, ["serve"],export_dir)
    #sess.run(tf.global_variables_initializer())

    # Sync params across processes
    sess.run(sync_all_params())

    # Setup model saving
    logger.setup_tf_saver(sess, inputs={'x': model['x']}, outputs={'pi': model['pi'], 'v': model['v']})
    def update(epoch):
        # inputs = {k:v for k,v in zip(all_phs, buf.get())}
        if gym_or_pyco == 'gym' and isinstance(env.action_space, Discrete):
            pi_l_old, v_l_old, ent = sess.run([pi_loss, v_loss, approx_ent],
                                              feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a,
                                                         adv_ph: buf.adv_buf, ret_ph: buf.ret_buf})
        if gym_or_pyco == 'gym' and isinstance(env.action_space, Box):
            pi_l_old, v_l_old, ent = sess.run([pi_loss, v_loss, approx_ent],
                                              feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a[0],
                                                         adv_ph: buf.adv_buf, ret_ph: buf.ret_buf})
        else:
            pi_l_old, v_l_old, ent = sess.run([pi_loss, v_loss, approx_ent],
                                              feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a,
                                                         adv_ph: buf.adv_buf, ret_ph: buf.ret_buf})

        # pi_l_old, v_l_old, ent = sess.run([pi_loss, v_loss, approx_ent], feed_dict=inputs)
        summary = tf.Summary(value=[tf.Summary.Value(tag="loss", simple_value=pi_l_old)])
        test_writer.add_summary(summary, epoch)

        # Training
        for i in range(train_pi_iters):
            if gym_or_pyco == 'gym' and isinstance(env.action_space, Discrete):

                _, kl = sess.run([train_pi, approx_kl],
                                 feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a, adv_ph: buf.adv_buf,
                                            ret_ph: buf.ret_buf})
                kl = mpi_avg(kl)
                if kl > 1.5 * target_kl:
                    logger.log('Early stopping at step %d due to reaching max kl.' % i)
                    break
            if gym_or_pyco == 'gym' and isinstance(env.action_space, Box):

                _, kl = sess.run([train_pi, approx_kl],
                                 feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a[0], adv_ph: buf.adv_buf,
                                            ret_ph: buf.ret_buf})
                kl = mpi_avg(kl)
                if kl > 1.5 * target_kl:
                    logger.log('Early stopping at step %d due to reaching max kl.' % i)
                    break
            else:

                _, kl = sess.run([train_pi, approx_kl],
                                 feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a, adv_ph: buf.adv_buf,
                                            ret_ph: buf.ret_buf})
                kl = mpi_avg(kl)
                if kl > 1.5 * target_kl:
                    logger.log('Early stopping at step %d due to reaching max kl.' % i)
                    break

        logger.store(StopIter=i)
        for _ in range(train_v_iters):
            if gym_or_pyco == 'gym' and isinstance(env.action_space, Discrete):
                sess.run(train_v, feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a, adv_ph: buf.adv_buf,
                                             ret_ph: buf.ret_buf})
            if gym_or_pyco == 'gym' and isinstance(env.action_space, Box):
                sess.run(train_v, feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a[0], adv_ph: buf.adv_buf,
                                             ret_ph: buf.ret_buf})
            else:
                sess.run(train_v, feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a, adv_ph: buf.adv_buf,
                                             ret_ph: buf.ret_buf})

        # Log changes from update
        if gym_or_pyco == 'gym' and isinstance(env.action_space, Discrete):
            pi_l_new, v_l_new, kl, cf = sess.run([pi_loss, v_loss, approx_kl, clipfrac],
                                                 feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a,
                                                            adv_ph: buf.adv_buf, ret_ph: buf.ret_buf})
        if gym_or_pyco == 'gym' and isinstance(env.action_space, Box):
            pi_l_new, v_l_new, kl, cf = sess.run([pi_loss, v_loss, approx_kl, clipfrac],
                                                 feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a[0],
                                                            adv_ph: buf.adv_buf, ret_ph: buf.ret_buf})
        else:
            pi_l_new, v_l_new, kl, cf = sess.run([pi_loss, v_loss, approx_kl, clipfrac],
                                                 feed_dict={logp_old_ph: buf.logp_buf, model['x']: o, model['pi']: a,
                                                            adv_ph: buf.adv_buf, ret_ph: buf.ret_buf})

        logger.store(LossPi=pi_l_old, LossV=v_l_old,
                     KL=kl, Entropy=ent, ClipFrac=cf,
                     DeltaLossPi=(pi_l_new - pi_l_old),
                     DeltaLossV=(v_l_new - v_l_old))

    start_time = time.time()
    o, r, d, ep_ret, ep_len = env.reset(), 0, False, 0, 0
    if gym_or_pyco == 'gym':
        o = o.reshape(1, obs_dim[0], obs_dim[1], obs_dim[2])
    else:
        o = rgb_input_pyco(o, obs_dim)
        o = o.reshape(1, obs_dim[0], obs_dim[1], 1)

    # Main loop: collect experience in env and update/log each epoch
    for epoch in range(epochs):
        num_ep = 0
        summary_ep = []
        logits_debug = []
        for t in range(local_steps_per_epoch):

            # a, v_t, logp_t = sess.run(get_action_ops, feed_dict={model['x']: o.board.reshape(1, -1)})
            a, v_t, logp_t = sess.run(get_action_ops, feed_dict={model['x']: o})
            logits_debug.append(sess.run(logits, feed_dict={model['x']: o})[0])


            # save and log
            buf.store(o, a, r, v_t, logp_t)
            # buf.store(o.board.reshape(1,-1), a, r, v_t, logp_t)

            # obs, act, rew, val, logp
            logger.store(VVals=v_t)

            o, r, d, _ = env.step(a[0])
            if gym_or_pyco == 'pyco':
                o = rgb_input_pyco(o, obs_dim)
                o = o.reshape(1, obs_dim[0], obs_dim[1], 1)
            else:
                o = o.reshape(1, obs_dim[0], obs_dim[1], obs_dim[2])

            if r is None:
                ep_ret += 0
                r = 0

            else:
                ep_ret += r

            ep_len += 1

            terminal = d or (ep_len == max_ep_len)
            if terminal or (t == local_steps_per_epoch - 1):
                num_ep += 1
                if not (terminal):
                    print('Warning: trajectory cut off by epoch at %d steps.' % ep_len)
                # if trajectory didn't reach terminal state, bootstrap value target
                last_val = r if d else sess.run(v, feed_dict={model['x']: o})
                buf.finish_path(last_val)
                if terminal:
                    # only save EpRet / EpLen if trajectory finished
                    logger.store(EpRet=ep_ret, EpLen=ep_len)
                    summary_ep = summary_ep + [ep_ret]
                    # summary = tf.Summary(value=[tf.Summary.Value(tag="mean_ep_ret", simple_value=summary_ep)])
                    # test_writer.add_summary(summary, num_ep)

                o, r, d, ep_ret, ep_len = env.reset(), 0, False, 0, 0
                if gym_or_pyco == 'gym':
                    o = o.reshape(1, obs_dim[0], obs_dim[1], obs_dim[2])
                else:
                    o = rgb_input_pyco(o, obs_dim)
                    o = o.reshape(1, obs_dim[0], obs_dim[1], 1)

        # Save model
        if (epoch % save_freq == 0) or (epoch == epochs - 1):
            logger.save_state({'env': env}, None)

        # Perform PPO update!
        min_summary_ep = min(summary_ep)
        max_summary_ep = max(summary_ep)
        summary_ep = np.mean(summary_ep)
        value_summary = np.mean(buf.val_buf)

        summary = tf.Summary(value=[tf.Summary.Value(tag="mean_ep_ret", simple_value=summary_ep)])
        test_writer.add_summary(summary, epoch)

        summary = tf.Summary(value=[tf.Summary.Value(tag="min_ep_ret", simple_value=min_summary_ep)])
        test_writer.add_summary(summary, epoch)

        summary = tf.Summary(value=[tf.Summary.Value(tag="max_ep_ret", simple_value=max_summary_ep)])
        test_writer.add_summary(summary, epoch)

        summary = tf.Summary(value=[tf.Summary.Value(tag="mean_value", simple_value=value_summary)])
        test_writer.add_summary(summary, epoch)

        update(epoch)

        #saver = tf.train.Saver()
        #save_path = saver.save(sess, "/home/clement/Documents/spinningup/trained_params/model.ckpt")

        # If you want to reload saved variables :
        # with tf.Session() as sess:
        # Restore variables from disk.
        # saver.restore(sess, "/home/clement/Documents/spinningup/trained_params/model.ckpt")

        # since I changed my sess.run i have to reset the buffer myself:

        buf.get()

        # Log info about epoch
        logger.log_tabular('Epoch', epoch)
        logger.log_tabular('EpRet', with_min_and_max=True)
        logger.log_tabular('EpLen', average_only=True)
        logger.log_tabular('VVals', with_min_and_max=True)
        logger.log_tabular('TotalEnvInteracts', (epoch + 1) * steps_per_epoch)
        logger.log_tabular('LossPi', average_only=True)
        logger.log_tabular('LossV', average_only=True)
        logger.log_tabular('DeltaLossPi', average_only=True)
        logger.log_tabular('DeltaLossV', average_only=True)
        logger.log_tabular('Entropy', average_only=True)
        logger.log_tabular('KL', average_only=True)
        logger.log_tabular('ClipFrac', average_only=True)
        logger.log_tabular('StopIter', average_only=True)
        logger.log_tabular('Time', time.time() - start_time)
        logger.dump_tabular()

        #plt.plot(np.mean(logits_debug[:],axis=0))
        #plt.ylabel('distribution of actions')
        #plt.grid(True)
        #plt.show()

if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('--env', type=str, default='HalfCheetah-v2')
    parser.add_argument('--hid', type=int, default=64)
    parser.add_argument('--l', type=int, default=2)
    parser.add_argument('--gamma', type=float, default=0.99)
    parser.add_argument('--seed', '-s', type=int, default=0)
    parser.add_argument('--cpu', type=int, default=4)
    parser.add_argument('--steps', type=int, default=4000)
    parser.add_argument('--epochs', type=int, default=50)
    parser.add_argument('--exp_name', type=str, default='ppo_pyco')
    args = parser.parse_args()

    mpi_fork(args.cpu)  # run parallel code with mpi

    from spinup.utils.run_utils import setup_logger_kwargs

    logger_kwargs = setup_logger_kwargs(args.exp_name, args.seed)

    ppo_pyco_load(lambda: gym.make(args.env), actor_critic=core.mlp_actor_critic,
             ac_kwargs=dict(hidden_sizes=[args.hid] * args.l), gamma=args.gamma,
             seed=args.seed, steps_per_epoch=args.steps, epochs=args.epochs,
             logger_kwargs=logger_kwargs)