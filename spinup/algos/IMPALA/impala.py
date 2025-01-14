import numpy as np
import tensorflow as tf
import gym
import time
import spinup.algos.IMPALA.core as core
import matplotlib.pyplot as plt
from gym.spaces import Box, Discrete
from spinup.utils.logx import EpochLogger
from spinup.utils.mpi_tf import MpiAdamOptimizer, sync_all_params
from spinup.utils.mpi_tools import mpi_fork, mpi_avg, proc_id, mpi_statistics_scalar, num_procs
from spinup.utils.logx import restore_tf_graph


def prod(iterable):
    """No built in produce for python <3.8"""
    p = 1
    for n in iterable:
        p *= n
    return p


def totuple(a):
    try:
        return tuple(totuple(i) for i in a)
    except TypeError:
        return a


def rgb_input_pyco(o, obs_dim):
    """Used to be a function to use pixels. Dropped that idea because it would just complicate everything."""
    A = np.zeros((obs_dim[0], obs_dim[1], 1))
    o = o.board
    return o


class Actor:

    def __init__(self, x_ph, a_ph, seed):

        self.x_ph = x_ph
        self.a_ph = a_ph
        self.seed = seed
        self.sess = tf.Session()

    def load_last_weights(self, export_dir):

        saver = tf.train.Saver()
        saver.restore(self.sess, export_dir)


    def get_episode(self, env, get_action_ops, gym_or_pyco, obs_dim):
        """ Need to restore the latest learner parameters of the model"""
        obs_buf = []
        act_buf = []
        rew_buf = []
        val_buf = []
        logp_buf = []
        last_rew_buf = []
        last_val_buf = []
        last_obs_buf = []

        obs, rew, done, ep_ret, ep_len = env.reset(), 0, False, 0, 0

        if gym_or_pyco == 'gym':
            obs = obs.reshape(1, obs_dim[0], obs_dim[1], obs_dim[2])
        else:
            obs = rgb_input_pyco(obs, obs_dim)
            obs = obs.reshape(1, obs_dim[0], obs_dim[1], 1)

        obs_buf.append(obs)
        rew_buf.append(rew)


        with self.sess as sess:

            seed = np.random.randint(low=1, high=100, size=1)[0]

            for i in range(seed):
                sess.run(get_action_ops, feed_dict={self.x_ph: obs})

            a, v_t, logp_t = sess.run(get_action_ops, feed_dict={self.x_ph: obs})

            act_buf.append(a[0])
            val_buf.append(v_t[0])
            logp_buf.append(logp_t)

            while not done:
                obs, rew, done, _ = env.step(act_buf[-1])
                if done:
                    if rew == None:
                        rew = 0
                    last_obs_buf = rgb_input_pyco(obs, obs_dim)
                    last_obs_buf = last_obs_buf.reshape(1, obs_dim[0], obs_dim[1], 1)
                    last_rew_buf = rew
                    a, v_t, logp_t = self.sess.run(get_action_ops, feed_dict={self.x_ph: last_obs_buf})
                    last_val_buf = v_t[0]

                elif gym_or_pyco == 'gym':
                    obs = obs.reshape(1, obs_dim[0], obs_dim[1], obs_dim[2])
                    obs_buf.append(obs)
                    if rew == None:
                        rew = 0
                        rew_buf.append(rew)
                    else:
                        rew_buf.append(rew)

                    a, v_t, logp_t = self.sess.run(get_action_ops, feed_dict={self.x_ph: obs})

                    act_buf.append(a[0])
                    val_buf.append(v_t[0])
                    logp_buf.append(logp_t)

                else:
                    obs = rgb_input_pyco(obs, obs_dim)
                    obs = obs.reshape(1, obs_dim[0], obs_dim[1], 1)
                    obs_buf.append(obs)
                    if rew == None:
                        rew = 0
                        rew_buf.append(rew)
                    else:
                        rew_buf.append(rew)

                    a, v_t, logp_t = self.sess.run(get_action_ops, feed_dict={self.x_ph: obs})

                    act_buf.append(a[0])
                    val_buf.append(v_t[0])
                    logp_buf.append(logp_t)


        return obs_buf, act_buf, rew_buf, val_buf, logp_buf, last_rew_buf, last_val_buf, last_obs_buf


def impala(gym_or_pyco, env_fn, ac_kwargs=dict(), n=4, logger_kwargs=dict(), actor_critic=core.mlp_actor_critic, num_cpu=1, epochs=200, max_ep_len=300,
           steps_per_epoch=4000, gamma=0.99, seed=73,vf_lr=1e-3, pi_lr = 3e-4, entropy_cost = 0.00025, baseline_cost = .5, rho_bar = 1, c_bar = 1, train_pi_iters=80,train_v_iters=80,
           export_dir="/home/clement/Documents/spinningup_instadeep/data/cmd_impala/cmd_impala_s0/simple_save",
           tensorboard_path = '/home/clement/spinningup/tensorboard'):

    dict_continous_gym = ['CarRacing', 'LunarLander', 'Pong', 'AirRaid', 'Adventure', 'AirRaid', 'Alien', 'Amidar',
                          'Assault', 'Asterix', 'Asteroids', 'Atlantis',
                          'BankHeist', 'BattleZone', 'BeamRider', 'Berzerk', 'Bowling', 'Boxing', 'Breakout',
                          'Carnival',
                          'Centipede', 'ChopperCommand', 'CrazyClimber', 'Defender', 'Demon_attack', 'DoubleDunk',
                          'ElevatorAction', 'Enduro', 'FishingDerby', 'Freeway', 'Frostbite', 'Gopher', 'Gravitar',
                          'Hero', 'IceHockey', 'Jamesbond', 'JourneyEscape', 'Kangaroo', 'Krull', 'KungFuMaster',
                          'MpntezumaRevenge', 'MsPacman', 'NameThisGame', 'Phoenix', 'Pitfall', 'Pooyan',
                          'PrivateEye', 'Qbert', 'Riverraid', 'RoadRunner', 'Robotank', 'Seaquest', 'Skiing',
                          'Solaris', 'SpaceInvaders', 'StarGunner', 'Tennis', 'TimePilot', 'Tutankham', 'UpNDown',
                          'Venture', 'VideoPinball', 'WizardOfWor', 'VarsRevenge', 'Zaxxon', 'Numberlink']
    dict_discrete_gym = []
    dict_gym = ['CarRacing', 'LunarLander', 'Pong', 'AirRaid', 'Adventure', 'AirRaid', 'Alien', 'Amidar',
                'Assault', 'Asterix', 'Asteroids', 'Atlantis',
                'BankHeist', 'BattleZone', 'BeamRider', 'Berzerk', 'Bowling', 'Boxing', 'Breakout', 'Carnival',
                'Centipede', 'ChopperCommand', 'CrazyClimber', 'Defender', 'Demon_attack', 'DoubleDunk',
                'ElevatorAction', 'Enduro', 'FishingDerby', 'Freeway', 'Frostbite', 'Gopher', 'Gravitar',
                'Hero', 'IceHockey', 'Jamesbond', 'JourneyEscape', 'Kangaroo', 'Krull', 'KungFuMaster',
                'MpntezumaRevenge', 'MsPacman', 'NameThisGame', 'Phoenix', 'Pitfall', 'Pooyan',
                'PrivateEye', 'Qbert', 'Riverraid', 'RoadRunner', 'Robotank', 'Seaquest', 'Skiing',
                'Solaris', 'SpaceInvaders', 'StarGunner', 'Tennis', 'TimePilot', 'Tutankham', 'UpNDown',
                'Venture', 'VideoPinball', 'WizardOfWor', 'VarsRevenge', 'Zaxxon', 'Numberlink']

    env = env_fn()
    proc_id()
    seed += 10000 * 3
    tf.set_random_seed(seed)
    np.random.seed(seed)
    logger = EpochLogger(**logger_kwargs)
    logger.save_config(locals())

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

    # Share information about action space with policy architecture
    ac_kwargs['action_space'] = env.action_space

    # Inputs to computation graph

    if gym_or_pyco == 'pyco':
        x_ph = tf.placeholder(tf.float32, shape=(None, obs_dim[0], obs_dim[1], 1))
    else:
        x_ph = tf.placeholder(tf.float32, shape=(1, obs_dim[0], obs_dim[1], obs_dim[2]))
    # a_ph = core.placeholders_from_spaces(env.action_space)
    if gym_or_pyco == 'gym' and isinstance(env.action_space, Discrete):
        a_ph = tf.placeholder(tf.uint8, shape=(1))

    elif gym_or_pyco == 'gym' and isinstance(env.action_space, Box):
        a_ph = tf.placeholder(tf.float32, shape=(env.action_space.shape[0]))

    else:
        a_ph = tf.placeholder(tf.int32, shape=(None))

    if gym_or_pyco == 'gym' and isinstance(env.action_space, Discrete):
        pi, logp, logp_pi, v, logits = actor_critic(x_ph, a_ph, policy='baseline_categorical_policy',
                                                    action_space=env.action_space.n)
    elif gym_or_pyco == 'gym' and isinstance(env.action_space, Box):
        pi, logp, logp_pi, v = actor_critic(x_ph, a_ph, policy='baseline_gaussian_policy',
                                            action_space=env.action_space.shape[0])
    else:
        pi, logp, logp_pi, v, logits = actor_critic(x_ph, a_ph, policy='baseline_categorical_policy',
                                                    action_space=env.action_space.n)
    adv_ph, pi_act_ph, logp_old_ph, v_trace_ph = core.placeholders(None, None, None, None)
    advantages = tf.stop_gradient(adv_ph)
    all_phs = [x_ph, a_ph, adv_ph, pi_act_ph]

    # every steps, get : action, value and logprob.
    get_action_ops = [pi, v, logp_pi]
    logits_op = [logits]



    # Count variables
    var_counts = tuple(core.count_vars(scope) for scope in ['pi', 'v'])
    logger.log('\nNumber of parameters: \t pi: %d, \t v: %d\n' % var_counts)

    # need to get rho_param from the v_trace function..

    c_param = tf.minimum(tf.exp(logp - logp_old_ph) ,c_bar)
    rho_param = tf.minimum(tf.exp(logp - logp_old_ph) ,rho_bar)

    def compute_baseline_loss(v_trace_ph, v):
        # Loss for the baseline, summed over the time dimension.
        # Multiply by 0.5 to match the standard update rule:
        # d(loss) / d(baseline) = advantage
        return .5 * tf.reduce_sum(tf.square(v_trace_ph - v))

    def compute_entropy_loss(logits):
        policy = tf.nn.softmax(logits)
        log_policy = tf.nn.log_softmax(logits)
        entropy_per_timestep = tf.reduce_sum(-policy * log_policy, axis=-1)
        return -tf.reduce_sum(entropy_per_timestep)

#advantages = adv_buf[i]

    def compute_policy_gradient_loss(logits, advantages, a=all_phs[1]):
        #actions = tf.one_hot(a,depth=act_dim)
        cross_entropy = tf.nn.sparse_softmax_cross_entropy_with_logits(
            labels=a, logits=logits)
        advantages = tf.stop_gradient(advantages)
        policy_gradient_loss_per_timestep = cross_entropy * advantages
        return tf.reduce_sum(policy_gradient_loss_per_timestep)

    total_loss = compute_entropy_loss(logits) * entropy_cost + compute_baseline_loss(v_trace_ph, v) * baseline_cost + \
                 compute_policy_gradient_loss(logits, adv_ph, all_phs[1])

    #pi_loss = tf.reduce_mean(adv_ph*rho_param)

    #v_loss = tf.reduce_mean((v_trace_ph - v) ** 2)

    def v_trace(obs_list, rews_list, act_list, logp_list, gamma, c_param, rho_param, v, obs_dim1, obs_dim2, last_obs_buf, sess):
        """Prend en entrée les trajectoires et les rewards associés, renvoie un dictionaire associé à des states : à un state x_s est associé un scalaire v_{x_s}
        les trajectoires seront une liste de trajectoires

        Args:
           obs_list: a list of different paths observations used for v_trace.
           rews_list: the list of the rewards lists from each of every paths used for v_trace.
           act_list: a list of the actions lists from each of every paths used for v_trace.
           logp_list: a vector of log probabilities log(p_old(a|s)) used for v_trace.
           gamma : hyperparam in v_trace and GAE
           c_param : a placeholder to be fed.
           rho_param : a placeholder to be fed
           v : a tf function for the value. Depends on x_ph and a_ph
           obs_dim1 : size of rows for board
           obs_dim2 : size of cols for board
           sess: contains the up to date policy of the graph from the learner at the time of computing v_trace.
        """

        size_obs = len(obs_list)
        v_tr = np.zeros(size_obs+1)

        c_param = sess.run([c_param],feed_dict={x_ph: obs_list, a_ph: act_list, logp_old_ph: logp_list})[0]
        c_param[-1] = 1
        rho_param = sess.run([rho_param], feed_dict={x_ph: obs_list, a_ph: act_list, logp_old_ph: logp_list})
        #v_tr[-1] = sess.run([v],feed_dict={x_ph: np.reshape(obs_list[-1], (1, obs_dim1, obs_dim2, 1))}) + rews_list[-1] * rho_param[0][-1]
        v_tr[-1] = last_val_buf
        last_obs = np.reshape(obs_list[-1], (1, obs_dim1, obs_dim2, 1))
        v_tr[-2] = sess.run([v],feed_dict={x_ph: last_obs})[0]+rho_param[0][-1]*(rews_list[-1] + gamma * sess.run([v],feed_dict={x_ph: last_obs_buf})[0]- sess.run([v],feed_dict={x_ph: last_obs})[0]) + gamma * c_param[-1] *(v_tr[-1] - sess.run([v],feed_dict={x_ph: last_obs_buf})[0] )
        for i in range(size_obs-1):
            obs_t_1 = np.reshape(obs_list[size_obs-2-i], (1, obs_dim1, obs_dim2, 1))
            obs_t = np.reshape(obs_list[size_obs-i-1],(1,obs_dim1, obs_dim2, 1))
            v_tr[size_obs-2-i] = sess.run([v],feed_dict={x_ph: obs_t_1})[0]+rho_param[0][size_obs-2-i]*(rews_list[size_obs-2-i] + gamma * sess.run([v], feed_dict={x_ph: obs_t})[0]- sess.run([v],feed_dict={x_ph: obs_t_1})[0]) + gamma * c_param[size_obs-2-i] *(v_tr[size_obs-i-1] - sess.run([v], feed_dict={x_ph: obs_t})[0] )
        return v_tr

    # with adv_ph the advantage with v_trace. On the whole thing?..
    with tf.name_scope('pi_loss'):
        #core.variable_summaries(pi_loss)
        core.variable_summaries(total_loss)

    # Optimizers
    #train_pi = MpiAdamOptimizer(learning_rate=pi_lr).minimize(pi_loss)
    #train_v = MpiAdamOptimizer(learning_rate=vf_lr).minimize(v_loss)
    #train_pi = MpiAdamOptimizer(learning_rate=pi_lr).minimize(total_loss)
    total_env_frames=1e6
    momentum=0.
    epsilon=.1
    decay=.99

    #tf.get_variable(
    #    'num_environment_frames',
    #    initializer=tf.zeros_initializer(),
    #    shape=[],
    #    dtype=tf.float32,
    #    trainable=False,
    #    collections=[tf.GraphKeys.GLOBAL_STEP, tf.GraphKeys.GLOBAL_VARIABLES])

    #num_env_frames = tf.train.get_global_step()
    #learning_rate = tf.train.polynomial_decay(pi_lr, num_env_frames,
    #                                          total_env_frames, 0)
    global_step = 100
    starter_learning_rate = 3e-4
    end_learning_rate=3e-5
    decay_steps=5e2
    learning_rate = tf.compat.v1.train.polynomial_decay(starter_learning_rate, global_step,
                                                        decay_steps, 0)

    optimizer = tf.train.RMSPropOptimizer(learning_rate, decay,
                                          momentum, epsilon)
    train_pi = optimizer.minimize(total_loss)

    sess = tf.Session()
    merged = tf.summary.merge_all()
    train_writer = tf.summary.FileWriter(tensorboard_path + '/train',
                                         sess.graph)
    test_writer = tf.summary.FileWriter(tensorboard_path + '/test')

    sess.run(tf.global_variables_initializer())
    sess.run(sync_all_params())
    # logger.setup_tf_saver(sess, inputs={'x': x_ph}, outputs={'pi':pi, 'v': v})


    def update(adv_buf, obs_list, act_list, logp_list):
        #pi_l_old, v_l_old = sess.run([pi_loss, v_loss],feed_dict={x_ph
        #
        # : obs_list[0], a_ph: act_list[0], logp_old_ph: logp_list[0], v_trace_ph: v_trace_list[0][:-1], adv_ph: adv_buf[0]})
        for i in range(n):
            for _ in range(train_pi_iters):
                sess.run(train_pi, feed_dict ={x_ph: obs_list[i], a_ph: act_list[i], logp_old_ph: logp_list[i], adv_ph: adv_buf[i], v_trace_ph: v_trace_list[i][:-1]})
            #for _ in range(train_v_iters):
            #    sess.run(train_v,feed_dict={x_ph: obs_list[i], a_ph: act_list[i], v_trace_ph: v_trace_list[i][:-1]})
        #pi_l_new, v_l_new = sess.run([pi_loss, v_loss],feed_dict={x_ph: obs_list[0], a_ph: act_list[0], logp_old_ph: logp_list[0], v_trace_ph: v_trace_list[0][:-1], adv_ph: adv_buf[0]})
        #logger.store(LossPi=pi_l_old, LossV=v_l_old, DeltaLossPi=(pi_l_new-pi_l_old), DeltaLossV=(v_l_new - v_l_old))


    saver = tf.train.Saver()
    save_path = saver.save(sess,export_dir)

    for epoch in range(epochs):
        # Begins collecting trajectories and computing v_traces, adv.
        obs_list = []
        rew_list = []
        act_list = []
        val_list = []
        logp_list = []
        v_trace_list = []
        adv_buf = []
        actors = [Actor(x_ph, a_ph, np.random.random_integers(0, high=39239, size=1)[0]) for i in range(n)]
        ep_len = []
        last_rew_list = []
        for i in range(n):
            actors[i].load_last_weights(export_dir)
            obs_buf, act_buf, rew_buf, val_buf, logp_buf, last_rew_buf, last_val_buf, last_obs_buf = actors[i].get_episode(env,get_action_ops,gym_or_pyco,obs_dim)
            obs_buf = np.reshape(obs_buf, (np.shape(obs_buf)[0], obs_dim[0], obs_dim[1], 1))
            ep_len.append(len(obs_buf))
            last_rew_list = np.append(last_rew_list, last_rew_buf)
            logp_buf = np.reshape(logp_buf, (np.shape(logp_buf)[0]))
            obs_list.append(obs_buf)
            rew_list.append(rew_buf)
            act_list.append(act_buf)
            val_list.append(val_buf)
            logp_list.append(logp_buf)
            v_trace_list.append(v_trace(obs_list[i], rew_list[i], act_list[i], logp_list[i], gamma, c_param, rho_param, v, obs_dim[0], obs_dim[1], last_obs_buf, sess))
            rews = np.append(rew_list[i], last_rew_buf)
            vals = np.append(val_list[i], last_val_buf)
            adv = rews[:-1] + gamma * v_trace_list[i][1:] - vals[:-1]
            # normalization of adv:
            adv_mean, adv_std = mpi_statistics_scalar(adv)
            adv = (adv - adv_mean) / (adv_std + 1e-5)
            adv_buf.append(adv)

        update(adv_buf, obs_list, act_list, logp_list)
        saver = tf.train.Saver()
        save_path = saver.save(sess,
                               export_dir)
        EpRet = []
        for k in range(n):
            EpRet = np.append(EpRet,sum(rew_list[k]))
            EpRet[-1] = EpRet[-1]+last_rew_list[k]
        logger.store(EpRet=EpRet)
        logger.store(EpLen=ep_len)
        logger.log_tabular('Epoch', epoch)
        logger.log_tabular('EpRet', with_min_and_max=True)
        logger.log_tabular('EpLen', with_min_and_max=True)
        logger.dump_tabular()