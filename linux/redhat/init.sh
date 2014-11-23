#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIRECTORY=~/work

sudo yum update -y
sudo yum install -y git vim curl wget

# for vim
. ../init_vim.sh

