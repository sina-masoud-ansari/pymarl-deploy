# pymarl
sudo apt-get update && apt-get install -y \
        git \
        unzip

git clone $1 # pymarl repo
cd pymarl
bash build.sh
bash install_sc2.sh
cd ..
