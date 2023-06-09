#force upgrades and updates
sudo apt-get update
sudo apt-get upgrade

# set up bashrc stuff
# get windows out of there -- /etc/wsl.conf
cat .bash_profile 
export PATH=$PWD:$PATH
source ~/.bashrc

# download mamba package manager
curl "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh" -o mambaforge.sh
unzip mambaforge.sh
sudo .sh mambaforge.sh

# create conda/mamba environment
mamba create -n polarynx -c conda python r
python --version
r --version
mamba activate env polarynx
# test installation/environment with helpful utilities
mamba install tar tree

# stuff that requires apt-get 
sudo apt-get install apache2 # is this the best webserver package?
sudo apt-get install docker

# AWS and Slack CLI
curl -fsSL https://downloads.slack-edge.com/slack-cli/install.sh
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install` -A # overwrite any previous failed installations

# get a protected copy of the .env file
# TODO

# create EC2 instance

# create S3 bucket