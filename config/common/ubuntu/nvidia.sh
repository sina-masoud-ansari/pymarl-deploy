# install system dependencies
sudo apt-get install -y linux-headers-$(uname -r)

# install nvidia driver and  cuda toolkit
wget -N https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.1.105-1_amd64.deb && \
        sudo dpkg -i cuda-repo-ubuntu1804_10.1.105-1_amd64.deb
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo apt-get update
sudo apt-get install -y cuda
