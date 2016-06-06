#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIR=~/work

SCRIPT_DIR=$(cd $(dirname $0); pwd)

cat $SCRIPT_DIR/.zsh_profile >> ~/.zsh_profile && source ~/.zsh_profile
cat $SCRIPT_DIR/.zshrc >> ~/.zshrc && source ~/.zshrc

# install apps
sudo pacman -Syu
sudo pacman -S git subversion vim curl wget
sudo pacman -S the_silver_searcher

# init common parts
bash $SCRIPT_DIR/../init_common_settings.sh

