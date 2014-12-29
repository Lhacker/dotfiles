#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIRECTORY=~/work

# put setting files
cp .vimrc ~/.vimrc
cp ../.gitconfig ~/.gitconfig
cp ../.agignore ~/.agignore

# for vim
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
vim -c NeoBundleInstall

mkdir -p ~/.vim/colors
git clone https://github.com/tomasr/molokai.git ${WORK_DIRECTORY}/molokai
cp ${WORK_DIRECTORY}/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim
