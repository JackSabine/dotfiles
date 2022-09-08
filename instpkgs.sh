#!/bin/bash

sudo add-apt-repository universe

sudo apt update
sudo apt upgrade

xargs -a ./packages sudo apt install -y

# Snap installs
# sudo snap install discord

# gsettings set org.gnome.shell.extensions.dash-to-dock isolate-monitors true

# bash -c  "$(wget -qO- https://git.io/vQgMr)"
# git clone git@github.com:Znuff/consolas-powerline.git ~/Downloads
