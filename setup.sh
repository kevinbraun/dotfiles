#!/bin/bash
WORKING_DIR=$(pwd)
echo "Working out of $WORKING_DIR..."

# install dependencies
sudo apt install vim terminator htop git gitk git-gui wget curl gnupg2 zsh

# install RVM and nvm
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

# change the default shell
chsh -s /bin/zsh

./setup-symlinks.sh
