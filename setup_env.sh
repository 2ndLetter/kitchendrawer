#!/bin/bash

# Prerequisites
sudo yum install git -y

read -p "Enter email: " email
read -p "Enter name: " name

git config --global user.email "$email"
git config --global user.name "$name"

# Setup new ssh key for GitHub
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1

cat ~/.ssh/id_rsa.pub


