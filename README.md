## PyMARL Deploy

This repository contains scripts to deploy the Python Multi-Agent Reinforcement Learning 
([PyMARL](https://github.com/oxwhirl/pymarl)) framework to Linux and Windows based systems. 
PyMARL execution environments can be setup using either [Anaconda](https://www.anaconda.com/) or 
[Docker](https://www.docker.com/) 

### Configurations

Deployment configurations can be found in the [config](./config) directory and can be run on the command line e.g.:

```bash
bash config/nvidia-docker-ubuntu.sh <REPO> <INSTALL_DIR>
```

will install NVIDIA driver dependencies as well as Docker and NVIDIA Docker on Ubuntu. The first argument is the target 
PyMARL Git repository to clone, the second argument is the location to download this repository to.

Similarly:

```bash
bash config/nvidia-conda-ubuntu.sh <REPO> <INSTALL_DIR>
```

will install the NVIDIA pre-requisites before setting up an Anaconda environment named `pymarl` which should then be
activated before running PyMARL.

**NOTE: This assumes a prexisting Anaconda environment**. One can  be installed from the 
[Anaconda webiste](https://www.anaconda.com/distribution/#download-section). 
[Miniconda](https://docs.conda.io/en/latest/miniconda.html) is a suitable light-weight alternative.   

If NVIDIA drivers are already installed, one can instead run:

```bash
bash config/docker-ubuntu.sh <REPO> <INSTALL_DIR>
```

or similar to avoid installing the drivers again. 

### Windows

**Note: While the following will help you set up the dependencies for running PyMARL, there are currently unresolved
runtime issues. It may work with Windows Subsystem for Linux however this hasn't been tested** 

The scripts expect a BASH environment such as Git Bash or the Windows Subsystem for Linux (untested).

If using Git Bash, you can create `~/.bashrc` and add one of the following to it:

```bash
# Anaconda
. /c/Users/<USER>/Anaconda3/etc/profile.d/conda.sh

# Miniconda
. /c/Users/<USER>/AppData/Local/Continuum/miniconda3/etc/profile.d/conda.sh
```

assuming Anaconda or Miniconda were installed in the default locations in the user's directory.

The GPU configurations for Windows are limited to using Anaconda environments only as 
[NVIDIA Docker](https://github.com/NVIDIA/nvidia-docker) is not currently supported on Windows.

Note that if you use the Anaconda deployment scripts on Windows, `conda` should be callable from the
BASH environment

PyMARL can be run without a GPU so creating a Docker deployment script is possible and would be
similar to [config/docker-ubuntu.sh](./config/docker-ubuntu.sh) except for the `nvidia-docker` step 
which can be ignored.

### Repositories

The deployment scripts are have been tested with the `https://github.com/sina-masoud-ansari/pymarl` fork as some 
changes were required in the original `Dockerfile` and `requirements.txt` for PyMARL to run correctly.

### Recommended Environments

#### Amazon Web Services

The following images are recommended on `p2.*` and `p3.*` instances

* Deep Learning Base AMI (Ubuntu) with `config/*-ubuntu.sh`
* Deep Learning AMI (Ubuntu) with `config/*-ubuntu.sh`
* Ubuntu Server 18.04 LTS with `config/nvidia-*-ubuntu.sh`
