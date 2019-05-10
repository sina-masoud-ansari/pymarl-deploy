SRC_DIR=$PWD/../src
bash $SRC_DIR/pymarl.sh $1 # pymarl repo
conda install -y pytorch=0.4.1 cuda90 -c pytorch
bash $SRC_DIR/conda.sh
