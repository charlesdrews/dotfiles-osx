if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# customize the prompt
#PS1='[\[\033[33m\]\u\[\033[0m\]:\[\033[01;34m\]\W\[\033[0m\]]\$ '
PS1='[\[\033[33m\]\u\[\033[0m\]:\[\033[34m\]\W\[\033[0m\]]\$ '
#PS1="\[\033[90;105m\]\u\[\033[100;95m\]◤ \[\033[m\]"

# make sure /usr/local/bin is in PATH
export PATH=/usr/local/bin:$PATH

# use vim for crontab -e, etc.
export EDITOR=/usr/local/bin/vim

# enable menu-complete (cycle through options by hitting tab)
[[ $- = *i* ]] && bind TAB:menu-complete

# enable git auto-completion
source ~/.git-completion.bash
