# prompt
autoload -Uz promptinit
promptinit
prompt adam1

# completion
autoload -Uz compinit
compinit

# correction
unsetopt correctall

# history
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=2000
SAVEHIST=1000

# keyboard
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char

# homebrew
eval $( /home/linuxbrew/.linuxbrew/bin/brew shellenv )

# aliases
if [ -f $ZDOTDIR/.aliasrc ]; then
	source $ZDOTDIR/.aliasrc
fi

# load additional scripts
if [ -d $ZDOTDIR/rc.d ]; then
	for file in $ZDOTDIR/rc.d/*.sh; do
		source $file
	done
fi
