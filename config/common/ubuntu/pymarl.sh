url=$1 # pymarl repo url
dest=$2 # destination dir

sudo apt-get update && apt-get install -y \
        git \
        unzip

git clone $url $dest

cd $dest
bash install_sc2.sh
cd -
