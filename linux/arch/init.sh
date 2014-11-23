#!/bin/bash

sudo pacman -Syu
sudo pacman -S git vim curl wget

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
# on finish, please execute :NeoBundleInstall


