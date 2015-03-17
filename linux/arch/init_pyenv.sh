#!/bin/bash

curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | zsh
echo '' >> ~/.zsh_profile
echo '#pyenv' >> ~/.zsh_profile
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.zsh_profile
echo 'eval "$(pyenv init -)"' >> ~/.zsh_profile
source .zsh_profile
