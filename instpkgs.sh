#!/bin/bash

# Bash unofficial strict mode: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

mint_nosnap_file=/etc/apt/preferences.d/nosnap.pref
if [[ -f ${mint_nosnap_file} ]]; then
    sudo awk -i inplace '{print "# " $0}' ${mint_nosnap_file}
fi

sudo add-apt-repository universe

sudo apt update
sudo apt upgrade -y

xargs -a ./apt_packages sudo apt install -y

sudo snap install $(cat ./snap_packages)

echo "Done!"

# gsettings set org.gnome.shell.extensions.dash-to-dock isolate-monitors true

# bash -c  "$(wget -qO- https://git.io/vQgMr)"
# git clone git@github.com:Znuff/consolas-powerline.git ~/Downloads

