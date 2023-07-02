# Set up EC2 Instance
* you can paste bootstrap commands into Launch an instance > Advanced details > User data

## Update All Packages
```
#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apache2 unzip -y
sudo systemctl enable apache2
sudo apt-get install unzip
sudo apt-get install net-tools
sudo apt-get install mysql-server -y
sudo systemctl enable mysql
```

## Install AWS CLI
```curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

## Check Setup
```
aws --version
apache2 -V
sudo systemctl status apache2
sudo systemctl status mysql
```

## Apache2 Setup
```sudo service apache2 restart
curl localhost
# that should give you the apache2 test page
```

## Retrieve Metadata 
* the metadata is always located at this IP address (weird, I know)

```
curl http://169.254.169.254/latest/meta-data/placement/availability-zone
curl http://169.254.169.254/latest/meta-data/instance-id
curl http://169.254.169.254/latest/meta-data/public-ipv4 >> /var/www/html/index.html
curl http://169.254.169.254/latest/meta-data/local-ipv4
```