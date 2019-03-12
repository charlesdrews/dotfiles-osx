export EDITOR=/usr/local/bin/vim

export PATH=$HOME/bin:$PATH
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH
export PATH=$HOME/.npm-packages/bin:$PATH

# anaconda can be annoying, so add at end
export PATH=$PATH:$HOME/anaconda/bin

# use solarized version of LS_COLORS
eval `gdircolors $HOME/.dircolors`
