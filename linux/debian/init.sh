#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIR=~/work

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cat $SCRIPT_DIR/.bash_profile >> ~/.bash_profile && source ~/.bash_profile
cat $SCRIPT_DIR/.bashrc >> ~/.bashrc && source ~/.bashrc

# install apps
sudo apt-get update -y
sudo apt-get install -y git subversion vim curl wget
sudo apt-get install -y silversearcher-ag

# init common parts
bash $SCRIPT_DIR/../init_common_settings.sh

