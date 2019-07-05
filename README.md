# dotfiles-osx

- Run `xcode-select --install` to install xcode cmd line tools
- Set up [homebrew](https://docs.brew.sh/Installation.html), then `brew install`:
  - `coreutils`
  - `libevent`
  - `ncurses`
  - `cmake`
  - `llvm`
  - `reattach-to-user-namespace`
  - `tmux`
  - `macvim`, then run `ln -sf /usr/local/Cellar/macvim/8.1-156/bin/mvim /usr/local/bin/vim`
- Copy .git-prompt.sh to $HOME from https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
- Symlink to these config files from $HOME
  - Prepend names w/ "."
- Set up vim
  - Install [Vundle](https://github.com/VundleVim/Vundle.vim)
  - Setup [ycm](https://github.com/Valloric/YouCompleteMe#installation)
  
Also, don't forget to...
- Map caps lock to ctrl
- Change iterm2 theme to solarized dark (same for vscode)
