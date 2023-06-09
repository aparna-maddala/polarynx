#force upgrades and updates
sudo apt-get update
sudo apt-get upgrade

# set up bashrc stuff
sudo touch wsl.conf
cat .bash_profile=$(source ~/.bashrc)
export PATH=$PWD:$PATH:/usr/local/bin
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

# Slack
curl -fsSL https://downloads.slack-edge.com/slack-cli/install.sh

# AWS
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip -A
cd /home/amaddala/polarynx-slack/awscliv2
sudo sh aws/install --update 2>&1 >> aws.conf.out # overwrite any previous failed installations
aws --version # test installation

# get a protected copy of the .env file
# TODO

# create EC2 instance

# create S3 bucket

# provision a few types of accounts through IAM, complete with roles, groups [sic], and whatever else I'm forgetting