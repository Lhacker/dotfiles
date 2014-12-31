#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIR=~/work

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cat $SCRIPT_DIR/.bash_profile >> ~/.bash_profile && . ~/.bash_profile
cat $SCRIPT_DIR/.bashrc >> ~/.bashrc && . ~/.bashrc

# install apps
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update -y
sudo apt-get install -y git subversion vim curl wget
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y oracle-java8-installer

# init common parts
bash $SCRIPT_DIR/../init_common_settings.sh

