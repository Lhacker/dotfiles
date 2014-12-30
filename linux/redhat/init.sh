#!/bin/bash

if [ ! -d ~/work ]; then
  mkdir ~/work
fi
WORK_DIRECTORY=~/work

CURRENT_DIR=$(cd $(dirname $0); pwd)

# install apps
sudo yum clean all
sudo yum update -y
rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
sudo yum update -y
sudo yum install -y git subversion vim curl wget
sudo yum install -y the_silver_searcher

# init common parts
. $CURRENT_DIR/../init_common_settings.sh

