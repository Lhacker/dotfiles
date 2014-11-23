#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIRECTORY=~/work

sudo pacman -Syu
sudo pacman -S git vim curl wget

# for vim
. ../init_vim.sh
