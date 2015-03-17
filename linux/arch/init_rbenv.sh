#!/bin/bash

#sudo pacman -Syu git
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo '' >> ~/.zsh_profile
echo '#rbenv' >> ~/.zsh_profile
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zsh_profile
echo 'eval "$(rbenv init -)"' >> ~/.zsh_profile
