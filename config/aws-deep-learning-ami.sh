SRC_DIR=$PWD/../src

bash $SRC_DIR/docker.sh
bash $SRC_DIR/nvidia-docker.sh
bash $SRC_DIR/pymarl.sh $1 # pymarl repo

sudo usermod -aG docker $USER



