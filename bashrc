if [ -f $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

# Enable menu-complete (cycle through options by hitting tab)
[[ $- = *i* ]] && bind TAB:menu-complete

# Set colors (see "colors" in bash_aliases to display the available
#             colors per the Solarized scheme)
blue='\[\033[34m\]'
red='\[\033[31m\]'
base01='\[\033[92m\]'
resetColor='\[\033[0m\]'

# Enable git auto-completion & bash prompt integration
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1		# show unstaged/uncommited */+
export GIT_PS1_SHOWSTASHSTATE=1		# show stashed $
export GIT_PS1_SHOWUNTRACKEDFILES=1	# show untracked %
export GIT_PS1_SHOWCOLORHINTS=1		# colorize
export GIT_PS1_SHOWUPSTREAM="auto"	# ahead/behind upstream >/<

# Set PROMPT_COMMAND (in lieu of PS1 to get colors from __git_ps1)
pre="\n\d \A "
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_CONNECTION" ] || \
	[ -n "$SSH_TTY" ]; then
	pre+="$red\u@\h:"
fi
#pre+="$blue\W$resetColor"
pre+="$base01\W$resetColor"
#post="\\\$$resetColor "
#post="➤$resetColor "
post="➤$resetColor "
format="(%s)"
PROMPT_COMMAND='__git_ps1 "$pre" "$post" "$format"'
