git clone $1 $2 # pymarl repo, install dir
conda create -y -n pymarl python=3.5
source $(dirname $(which conda))/../etc/profile.d/conda.sh
conda activate pymarl
conda install -y pytorch=0.4.1 cuda90 -c pytorch
pip install -r $2/requirements.txt
echo "Please see $2/install_sc2.sh and https://github.com/oxwhirl/smac#installing-starcraft-ii for details on installing StarCraft II and the required maps"

