from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

from os.path import join, dirname, realpath
from setuptools import setup

import sys

assert sys.version_info.major == 3 and sys.version_info.minor >= 6, \
    "The Spinning Up repo is designed to work with Python 3.6 and greater." \
    + "Please install it before proceeding."

with open(join("spinup", "version.py")) as version_file:
    exec(version_file.read())

setup(
    name='spinup',
    py_modules=['spinup'],
    version=__version__,#'0.1',
    install_requires=[
        'cloudpickle==0.5.2',
        'ipython',
        'joblib',
        'matplotlib',
        'mpi4py',
        'numpy>=1.9',
        'pandas',
        'pytest',
        'psutil',
        'scipy',
        'seaborn==0.8.1',
	'six',
        'tensorflow>=1.8.0',
        'tqdm'
    ],
	
    description="Teaching tools for introducing people to deep RL.",
    author="Joshua Achiam",
)
