if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 INSTALL_PATH"
fi

pymarl_dir=$1
conda create -y -n pymarl python=3.5
conda activate pymarl
pip install -r $pymarl_dir/requirements.txt
