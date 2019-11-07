# prompt
autoload -Uz promptinit
promptinit
prompt adam1

# completion
autoload -Uz compinit
compinit

# correction
unsetopt correctall

# aliases
if [ -f ~/.zsh/.aliasrc ]; then
	. ~/.zsh/.aliasrc
fi
