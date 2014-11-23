#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIRECTORY=~/work

sudo apt-get update -y
sudo apt-get install -y git vim curl wget

# for vim
. ../init_vim.sh

