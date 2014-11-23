#!/bin/sh

CURRENT_DIR=$(cd $(dirname $0); pwd)

# install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install from Brewfile
cp $CURRENT_DIR/Brewfile ~/ && brew bundle

# set .files

