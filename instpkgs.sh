#!/bin/bash

# Bash unofficial strict mode: http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

mint_nosnap_file="/etc/apt/preferences.d/nosnap.pref"
snap_pkglist_file="snap_packages"
apt_pkglist_file="apt_packages"

if [[ -f ${mint_nosnap_file} ]]; then
  sudo sed -e 's/^#*/#/' -i ${mint_nosnap_file}
fi

sudo add-apt-repository universe

sudo apt update
sudo apt upgrade -y

xargs -a ${apt_pkglist_file} sudo apt install -y

# Install individually so individual fails won't cancel all installs
# https://askubuntu.com/questions/1232034/problem-when-trying-to-install-multiple-apps-with-snap
# https://forum.snapcraft.io/t/trying-to-re-install-multiple-packages-with-snap-install-fails-with-install-refresh-information-results-from-the-store/24859

IFS=$'\n' readarray -t packages < ${snap_pkglist_file}
# Unset e so package installs are allowed to fail
set +e
for pkg in ${packages[@]}; do
  # Split on spaces so package names with install parameters can be separated
  # snap install 'code' '--classic' (works)
  # snap install 'code --classic' (package not found)
  IFS=$' \t' pkg_options=(${pkg})
  sudo snap install ${pkg_options[@]}
done
set -e

echo "Done!"

# gsettings set org.gnome.shell.extensions.dash-to-dock isolate-monitors true

# bash -c  "$(wget -qO- https://git.io/vQgMr)"
# git clone git@github.com:Znuff/consolas-powerline.git ~/Downloads

