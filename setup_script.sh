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

# setup Git
git config --global user.email "johanna.liu@mths.ca"
git config --global user.name "Johanna Liu"

# install NeoVim from source
mkdir temp
cd temp || exit
sudo apt-get install ninja-build gettext cmake unzip curl -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd .. || exit
cd .. || exit
sudo rm -r ./temp

# install for NeoVim LSP
sudo apt install npm -y
sudo npm i -g typescript-language-server; sudo npm i -g typescript

# install languages
curl -fsSL https://bun.sh/install | bash
# shellcheck source=/dev/null
source ~/.bashrc
sudo apt install -y default-jdk
