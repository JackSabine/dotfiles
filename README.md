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

1. [Get the latest stable version](https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb)
2. [Verify the sha256sum](https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb.sha256sum)
3. Install from the deb package
