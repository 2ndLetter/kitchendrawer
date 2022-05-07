#!/bin/bash

# Setup new ssh key for GitHub
ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa <<<y >/dev/null 2>&1

echo "Script finished!"
