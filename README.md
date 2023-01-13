# My dotfiles!

Also includes apt package installs with `packages.sh`

How to create symlinks for dotfiles in ~:

1. Run `packages.sh` or ensure that `stow` is installed
2. Run `mksymlinks.sh`, which will use stow for symlink creation

## Exceptions

### NodeJS

The apt version may not be the latest version.

Use the [n package](https://www.npmjs.com/package/n)

```bash
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
```

### Neovim

The apt version may not be the latest version.
At the time of writing this, snap channels `stable` and `edge` correspond to `stable` and `nightly`.

If you want to install from the project GitHub (snap is behind, etc.):

```bash
curl -OL https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb # Downloads latest stable version into CWD
curl -OL https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb.sha256sum # Downloads corresponding SHA256
sha256sum -c nvim-linux64.deb.sha256sum # Verify download integrity
sudo apt update
sudo apt remove neovim # Remove old version of neovim (if exists)
sudo apt autoremove # Remove any old dependencies from neovim
sudo apt install ./nvim-linux64.deb # Install from .deb file
```
