#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIRECTORY=~/work

cat ./.bash_profile > ~/.bash_profile && . ~/.bash_profile
cat ./.bashrc > ~/.bashrc && . ~/.bashrc

# install apps
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update -y
sudo apt-get install -y git svn vim curl wget
sudo apt-get install -y silversearcher-ag
sudo apt-get install -y oracle-java8-installer

# init common parts
. ../init_common_settings.sh

