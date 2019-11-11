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

# aliases
if [ -f $ZDOTDIR/.aliasrc ]; then
	. $ZDOTDIR/.aliasrc
fi
