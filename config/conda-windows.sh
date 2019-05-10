SRC_DIR=$PWD/../src
bash $SRC_DIR/pymarl-windows.sh $1 # pymarl repo
conda install -y pytorch=0.4.1 cuda90 -c pytorch
bash $SRC_DIR/conda.sh
echo "Please see $PWD/pymarl/install_sc2.sh and https://github.com/oxwhirl/smac#installing-starcraft-ii for details on installing StarCraft II and the required maps"
