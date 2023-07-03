# Setting up a Local Environment

## Updgrades and Updates
```
sudo apt-get update
sudo apt-get upgrade
```

## Configuration
```
sudo touch wsl.conf
cat .bash_profile=$(source ~/.bashrc)
export PATH=$PWD:$PATH:/usr/local/bin
source ~/.bashrc
```

## Package Management
```
curl 'https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh' -o mambaforge.sh
./mambaforge.sh
# restart your terminal to see changes
```

## Create Environment
```
mamba create -n polarynx -c conda python r
mamba activate polarynx
python --version
r --version
```

## Test Installation
```
mamba install tar tree unzip
```

## apt Package Management
``` 
sudo apt-get install apache2 # is this the best webserver package?
sudo apt-get install docker
sudo apt-get install npm
sudo apt-get install nvm
```

## Node.js
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# now, restart terminal
nvm install 16
nvm use 16
```

# AWS
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip -A
cd /home/amaddala/polarynx-slack/awscliv2
sudo sh aws/install --update 2>&1 >> aws.conf.out # overwrite any previous failed installations
aws --version # test installation
```

## get your dev credentials - *.pem

# Slack
curl -fsSL https://downloads.slack-edge.com/slack-cli/install.sh

# get a protected copy of the .env files

# create S3 bucket

scp -i "dev-credentials.pem" index.html ubuntu@ec2-3-142-246-204.us-east-2.compute.amazonaws.com:~