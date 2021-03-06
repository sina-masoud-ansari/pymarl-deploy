## PyMARL Deploy

This repository contains scripts to deploy the Python Multi-Agent Reinforcement Learning 
([PyMARL](https://github.com/oxwhirl/pymarl)) framework to Linux based systems. 
PyMARL execution environments can be setup using either [Anaconda](https://www.anaconda.com/) or 
[Docker](https://www.docker.com/) 

### Configurations

Deployment configurations for Linux can be found in the [config](./config) directory and can be run on the command line e.g.:

```bash
bash config/nvidia-docker-ubuntu.sh <REPO> <INSTALL_DIR>
```

will install NVIDIA driver dependencies as well as Docker and NVIDIA Docker on Ubuntu. The first argument is the target 
PyMARL Git repository to clone, the second argument is the location to download this repository to e.g.:

```bash
bash config/nvidia-docker-ubuntu.sh git@github.com:sina-masoud-ansari/pymarl.git /data/pymarl
```

Similarly:

```bash
bash config/nvidia-conda-ubuntu.sh <REPO> <INSTALL_DIR>
```

will install the NVIDIA pre-requisites before setting up an Anaconda environment named `pymarl` which should then be
activated before running PyMARL.

**Note: This assumes a prexisting Anaconda environment**. One can  be installed from the 
[Anaconda webiste](https://www.anaconda.com/distribution/#download-section). 
[Miniconda](https://docs.conda.io/en/latest/miniconda.html) is a suitable light-weight alternative.   

If NVIDIA drivers are already installed, one can instead run:

```bash
bash config/docker-ubuntu.sh <REPO> <INSTALL_DIR>
```

or similar to avoid installing the drivers again. 

**Note: The NVIDIA dependencies are currently setup for Ubuntu 18.04.** You should be able to change [the nvidia config](./config/common/ubuntu/nvidia.sh) to suit your target system. Note that `nvidia-docker` is not supported on all Ubuntu releases.



### Repositories

The deployment scripts are have been tested with the `https://github.com/sina-masoud-ansari/pymarl` fork as some 
changes were required in the original `Dockerfile` and `requirements.txt` for PyMARL to run correctly.

### Recommended Environments

#### Amazon Web Services

The following images are recommended on `p2.*` and `p3.*` instances

* Deep Learning Base AMI (Ubuntu) with `config/*-ubuntu.sh`
* Deep Learning AMI (Ubuntu) with `config/*-ubuntu.sh`
* Ubuntu Server 18.04 LTS with `config/nvidia-*-ubuntu.sh`
