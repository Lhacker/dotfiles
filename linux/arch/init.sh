#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIRECTORY=~/work

# install apps
sudo pacman -Syu
sudo pacman -S git svn vim curl wget
sudo pacman -S the_silver_searcher

# init common parts
. ../init_common_settings.sh

