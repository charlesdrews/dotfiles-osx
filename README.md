# dotfiles-osx

- Run `xcode-select --install` to install xcode cmd line tools
- Set up [homebrew](https://docs.brew.sh/Installation.html), then `brew install`:
  - `coreutils`
  - `libevent`
  - `ncurses`
  - `cmake`
  - `llvm`
  - `reattach-to-user-namespace`
- Copy .git-prompt.sh to $HOME from https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
- Symlink to these config files from $HOME
  - Prepend names w/ "."
- Set up vim
  - Install [MacVim](https://github.com/macvim-dev/macvim/releases)
  - Symlink to `/Applications/MacVim.app/Contents/bin/mvim` as `/usr/local/bin/vim`
  - Setup [ycm](https://github.com/Valloric/YouCompleteMe#installation)
