#!/usr/bin/env bash
#Created by: Johanna Liu
#Created on: Feb 2024
#AWS Debian Linux ,dotfiles and setup script

sudo apt update
sudo apt upgrade -y

# Some Programs
sudo apt remove w3m -y
sudo apt install gh -y
sudo apt install stow -y

# install NeoVim 
mkdir temp
cd temp
sudo apt-get install ninja-build gettext cmake unzip curl
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
cd ..
sudo rm -r ./temp

# install languages
sudo apt install -y default-jdk
curl -fsSL https://bun.sh/install |bash

# copy -r ./scripts/ ~/
