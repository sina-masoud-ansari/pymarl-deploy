# pymarl
sudo apt-get update && apt-get install -y \
        git \
        unzip

git clone $1 $2 # pymarl repo

cd $2
bash docker-build.sh
bash install_sc2.sh
cd -
