#!/bin/bash

# Prerequisites
sudo yum install git -y

# Setup new ssh key for GitHub
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1

cat ~/.ssh/id_rsa.pub
