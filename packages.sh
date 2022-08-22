#!/bin/bash

# Apt installs
sudo apt update
sudo apt upgrade
sudo apt install git
sudo apt install curl
sudo apt install tmux
sudo apt install neovim
sudo apt install kicad
sudo apt install exa
sudo apt install ripgrep
sudo apt install gnome-tweaks
sudo apt install piper
sudo apt install discord
sudo apt install tree
sudo apt install steam
sudo apt install bat
sudo apt install gnome-screenshot
sudo apt install ckb-next

## Required for vivado
sudo apt install libncurses5
sudo apt install libtinfo5
sudo apt install libncurses5-dev 
sudo apt install libncursesw5-dev
sudo apt install ncurses-compat-libs
sudo apt install libtinfo-dev

## 7zip
sudo add-apt-repository universe
sudo apt update
sudo apt install p7zip-full p7zip-rar

# Snap installs
sudo snap install discord
sudo snap install spotify

gsettings set org.gnome.shell.extensions.dash-to-dock isolate-monitors true

# bash -c  "$(wget -qO- https://git.io/vQgMr)"
# git clone git@github.com:Znuff/consolas-powerline.git ~/Downloads
