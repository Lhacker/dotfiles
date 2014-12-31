#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIR=~/work

SCRIPT_DIR=$(cd $(dirname $0); pwd)

# put setting files
cp $SCRIPT_DIR/.vimrc ~/.vimrc
cp $SCRIPT_DIR/.gitconfig ~/.gitconfig
cp $SCRIPT_DIR/.agignore ~/.agignore

# for vim
mkdir -p ~/.vim/colors
git clone https://github.com/tomasr/molokai.git $WORK_DIR/molokai
cp $WORK_DIR/molokai/colors/molokai.vim ~/.vim/colors/molokai.vim

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
vim -c NeoBundleInstall
