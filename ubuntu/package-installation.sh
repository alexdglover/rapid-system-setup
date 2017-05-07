#!/bin/bash

# Install base packages
sudo apt-get install keepassx git openshot vim vlc openssh-server curl python-pip python-dev build-essential -y

# Install rvm, requirements, and set default version to 2.4
curl -sSL https://get.rvm.io | bash -s stable
source /home/alexdglover/.rvm/scripts/rvm
rvm requirements
rvm install 2.4
rvm use 2.4 --default

# Install Jekyll
gem install jekyll

# Upgrade pip
sudo pip install --upgrade pip

# Install awscli
sudo pip install --upgrade --user awscli

# Download chrome, dropbox, and atom deb packages first, then install
sudo dpkg -i ~/Downloads/google-chrome-stable*
sudo dpkg -i ~/Downloads/dropbox*
sudo dpkg -i ~/Downloads/atom-amd64.deb

