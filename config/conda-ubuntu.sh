url=$1 # pymarl repo url
dest=$2 # destination dir

bash common/ubuntu/pymarl.sh $url $dest
bash common/conda.sh $dest
