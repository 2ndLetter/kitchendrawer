#!/bin/bash

# Prerequisites
sudo yum install git -y

# Retrieve input for git config commands
read -p "Enter email: " email
read -p "Enter name: " name

# Execute git config
git config --global user.email "$email"
git config --global user.name "$name"
git config --global push.default simple

# Setup new ssh key for GitHub
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1

# Install Python 3.9.12
sudo yum install gcc openssl-devel bzip2-devel libffi-devel zlib-devel -y
wget https://www.python.org/ftp/python/3.9.12/Python-3.9.12.tgz
tar xzf Python-3.9.12.tgz
cd Python-3.9.12
sudo ./configure --enable-optimizations 
sudo make altinstall
cd ..
sudo rm Python-3.9.12.tgz

# Verify installation
python3.9 -V

# Cat public key for adding to GitHub
cat ~/.ssh/id_rsa.pub

echo "Ensure you add your new public key to your GitHub account!"
