if [ "$#" -ne 2 ]; then
    echo "USAGE: $0 GIT_URL INSTALL_PATH"
fi

url=$1 # pymarl repo url
dest=$2 # destination dir

bash config/common/ubuntu/nvidia.sh
bash config/common/ubuntu/docker.sh
bash config/common/ubuntu/nvidia-docker.sh
bash config/common/ubuntu/pymarl.sh $url $dest

# build container
cd $dest
bash docker-build.sh
cd -
sudo usermod -aG docker $USER



