SRC_DIR=$PWD/../src
bash $SRC_DIR/nvidia.sh
bash $SRC_DIR/pymarl.sh $1 # pymarl repo
bash $SRC_DIR/conda.sh
