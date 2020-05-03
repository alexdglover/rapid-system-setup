#!/bin/bash

# Install base apt packages
# sudo apt install software-properties-common -y
# sudo apt-add-repository universe -y
# Add 3rd party PPAs for other packages
## For Veracrypt
sudo add-apt-repository ppa:unit193/encryption -y

# Update apt database
sudo apt update
# Install all packages
sudo apt install keepassx git vim vlc openssh-server curl python-dev build-essential veracrypt -y

# Configure git
git config --global user.email "alexdglover@gmail.com"
git config --global user.name "Alex Glover"

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y

# Install Atom
wget https://atom.io/download/deb -O atom.deb
sudo apt install ./atom.deb -y

# Install rvm, requirements, and set default version to 2.7.1
curl -sSL https://get.rvm.io | bash -s stable
source /home/alexdglover/.rvm/scripts/rvm
rvm requirements
rvm install 2.7.1
rvm use 2.7.1 --default
gem install bundler

# Optionally install Jekyll if not using Bundler
# gem install jekyll

# Install pyenv and Python
curl https://pyenv.run | bash
cat << "EOF" >> ~/.bashrc
export PATH="/home/alexdglover/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
EOF
exec $SHELL
pyenv install 3.7.4
pyenv global 3.7.4

# Upgrade pip
pip install --upgrade pip

# Install awscli
pip install --upgrade --user awscli

# Optional multimedia packages
# sudo apt install openshot vokoscreen -y
# sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
# sudo apt-get update
# sudo apt-get install simplescreenrecorder

# Install Dropbox last, as it will open a browser to handle login
echo "Don't forget to set Dropbox to launch on startup"
wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
.dropbox-dist/dropboxd
