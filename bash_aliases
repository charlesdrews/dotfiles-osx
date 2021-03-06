# use interactive mode to prevent accidents (override w/ -f)
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# quickly check PATH variable
alias path='echo $PATH | tr ":" "\n"'

# preferred ls usage & combine it with cd using "ca"
alias ls='gls --color=auto'
alias la='gls -ACF --color=auto'
alias ll='gls -AlFh --color=auto'
function ca() {
	if [ -n "$1" ]
	then
		cd "$1" && la;
	else
		cd && la;
	fi 
}
alias ..='ca ..'
function cl() {
	if [ -n "$1" ]
	then
		cd "$1" && ll;
	else
		cd && la;
	fi
}

# git aliases
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gl='git hist ' # hist is an alias in .gitconfig for git log
alias gitls='git ls-files'

# tmux aliases
# The terminal is using 16 colors to properly use the Solarized theme.
# In order to make tmux use the solarized colors, need to use a workaround
# that involves tmux thinking the terminal is using 256 colors. To accomplish
# this, run tmux with option -2 so it doesn't auto-detect the terminal colors.
alias tmux='tmux -2'
alias tls='tmux ls'
function ta() {
	if [ -n "$1" ]
	then
		tmux -2 attach -t "$1";
	fi
}
function tn() {
	if [ -n "$1" ]
	then
		tmux -2 new-session -s "$1";
	fi
}
function tk() {
	if [ -n "$1" ]
	then
		tmux -2 kill-session -t "$1";
	fi
}

# function to use bc quickly
function =() {
	if [ -n "$1" ]
	then
		bc -l <<< "$1";
	fi
}

# show possible shell colors
alias colors='printf "\e[%dm%d dark\e[0m  \e[%d;1m%d bold\e[0m\n" {30..37}{,,,}'

# open various types of files & projects from command line
alias sublime='open -a /Applications/Sublime\ Text.app/'
alias androidstudio='open -a /Applications/Android\ Studio.app/'
alias intellij='open -a /Applications/IntelliJ\ IDEA\ CE.app/'
alias pycharm='open -a /Applications/PyCharm\ CE.app'
alias chrome='open -a /Applications/Google\ Chrome.app/'
alias vscode='open -a /Applications/Visual Studio Code.app'
