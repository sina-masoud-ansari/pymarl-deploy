bash common/ubuntu/docker.sh
bash common/ubuntu/nvidia-docker.sh
bash common/ubuntu/pymarl.sh $1 $2 # pymarl repo, destination dir
sudo usermod -aG docker $USER