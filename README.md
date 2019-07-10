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
  - `npm`, then `npm install -g` these: `typescript`, `eslint`, `tslint`, `@google/clasp`
- Copy .git-prompt.sh to $HOME from https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
- Symlink to these config files from $HOME
  - Prepend names w/ "."
- Set up vim
  - Install [Vundle](https://github.com/VundleVim/Vundle.vim)
  - Setup [YCM](https://github.com/Valloric/YouCompleteMe#installation)
  
Also, don't forget to...
- Map caps lock to ctrl
- Change iterm2 theme to solarized dark (same for vscode)
- Install [tmux plugin manager](https://github.com/tmux-plugins/tpm): `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- Update vscode:
  - Add extensions: Vim, TSLint, markdownlin, jshint, ESLint, TSLint, Beautify, and Salesforce Extension Pack
  - Update settings.json to include:
    ```json
    {
      "workbench.colorTheme": "Solarized Dark",

      "editor.rulers": [
          80,
         100
      ],

      "editor.renderWhitespace": "none",
      "workbench.sideBar.location": "left",

      "salesforcedx-vscode-apex.java.home":"/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home"
    }
    ```
  - Allow [key repeating](https://stackoverflow.com/a/44010683)
    `defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false`
