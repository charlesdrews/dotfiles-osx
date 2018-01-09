# dotfiles-osx

- Run `xcode-select --all` to install xcode cmd line tools
- Set up [homebrew](https://docs.brew.sh/Installation.html), then install:
  - `coreutils`
  - `libevent`
  - `ncurses`
  - `cmake`
  - `--with-toolchain llvm`
  - `reattach-to-user-namespace`
- Symlink to these config files from $HOME
  - Prepend names w/ "."
- Set up vim
  - Install [MacVim](https://github.com/macvim-dev/macvim/releases)
  - Symlink to `/Applications/MacVim.app/Contents/bin/mvim` as `/usr/local/bin/vim`
  - Setup [ycm](https://github.com/Valloric/YouCompleteMe#installation)
