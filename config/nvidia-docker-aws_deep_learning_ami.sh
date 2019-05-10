url=$1 # pymarl repo url
dest=$2 # destination dir

bash common/ubuntu/docker.sh
bash common/ubuntu/nvidia-docker.sh
bash common/ubuntu/pymarl.sh $url $dest

# build container
cd $dest
bash docker-build.sh
cd -
sudo usermod -aG docker $USER