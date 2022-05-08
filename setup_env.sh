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

# Cat public key for adding to GitHub
cat ~/.ssh/id_rsa.pub

# Install Python 3.x
wget https://www.python.org/ftp/python/3.10.4/Python-3.10.4.tgz
tar xzf Python-3.10.4.tgz
cd Python-3.10.4
sudo ./configure --enable-optimizations 
sudo make altinstall
sudo rm Python-3.10.4.tgz
