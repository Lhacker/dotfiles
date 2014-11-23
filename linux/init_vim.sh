#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIRECTORY=~/work

cp .vimrc ~/.vimrc

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
# on finish, please execute :NeoBundleInstall

mkdir -p ~/.vim/colors
git clone https://github.com/tomasr/molokai.git ${WORK_DIRECTORY}/molokai
cp ${WORK_DIRECTORY}/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim
