if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 INSTALL_PATH"
fi

pymarl_dir=$1
source $(dirname $(which conda))/../etc/profile.d/conda.sh
conda create -y -n pymarl python=3.7
conda activate pymarl
pip install --upgrade pip
pip install -r $pymarl_dir/requirements.txt
