# EDITOR and PATH set in .profile
# don't reload if already in tmux
if [ -f $HOME/.profile ] && [ -z $TMUX ]
then
	source $HOME/.profile
fi

# aliases, menu-complete, PROMPT_COMMAND set in .bashrc
if [ -f $HOME/.bashrc ]
then
	source $HOME/.bashrc
fi

# source completion package from brew
if [ -f $(brew --prefix)/etc/bash_completion ]
then
	source $(brew --prefix)/etc/bash_completion
fi

#launch tmux if not already in it
if [ -z $TMUX ]
then
	tmux -2 attach -t "$USER" || tmux -2 new-session -s "$USER"
fi
