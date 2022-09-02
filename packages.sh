#!/bin/bash

# Apt installs
sudo apt update
sudo apt upgrade

# GNOME addons
sudo apt install gnome-tweaks
sudo apt install gnome-screenshot

sudo apt install piper            # Mouse DPI and LED coloring
sudo apt install ckb-next         # Corsair K55 LED coloring
sudo apt install git              # Best VCS
sudo apt install curl             # How else would you download things?
sudo apt install tmux             # Favorite terminal mux
sudo apt install neovim           # Favorite editor
sudo apt install kicad            # Schematic/PCB tool
sudo apt install tree             # Ubuntu tree
sudo apt install bat              # `cat` replacement -- binary named `batcat` on Ubuntu
sudo apt install exa              # `ls` replacement
sudo apt install ripgrep          # `grep` replacement
sudo apt install okular           # PDF Viewer
sudo apt install htop             # Task Manager / Viewer
sudo apt install ffmpegthumbnailer

# Standalone apps
sudo apt install steam

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

## Media players
sudo apt install vlc

# Snap installs
sudo snap install discord
sudo snap install spotify

gsettings set org.gnome.shell.extensions.dash-to-dock isolate-monitors true

# bash -c  "$(wget -qO- https://git.io/vQgMr)"
# git clone git@github.com:Znuff/consolas-powerline.git ~/Downloads
