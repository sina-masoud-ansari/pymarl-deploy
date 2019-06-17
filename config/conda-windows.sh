if [ "$#" -ne 2 ]; then
    echo "USAGE: $0 GIT_URL INSTALL_PATH"
fi

url=$1 # pymarl repo url
dest=$2 # destination dir

git clone $url $dest
#source $(dirname $(which $CONDA_EXE))/../etc/profile.d/conda.sh
conda create -y -n pymarl python=3.5
conda activate pymarl
conda install -y pytorch=0.4.1 cuda90 -c pytorch
pip install --upgrade pip
pip install -r $dest/requirements.txt
echo "Please see $2/install_sc2.sh and https://github.com/oxwhirl/smac#installing-starcraft-ii for details on installing StarCraft II and the required maps"

