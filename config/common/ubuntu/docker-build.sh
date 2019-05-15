if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 INSTALL_PATH"
fi

dest=$1 # destination dir

# build container
sudo usermod -aG docker $USER
cd $dest/docker
sudo bash build.sh
cd -

