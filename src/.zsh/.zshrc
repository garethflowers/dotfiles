# prompt
PROMPTNL=$'\n'
PS1="$PROMPTNL%F{cyan}%~%f$PROMPTNL%B%F{magenta}>> %f%b"

# completion
autoload -Uz compinit
compinit

# correction
unsetopt correctall

# history
HISTFILE=$ZDOTDIR/.history
HISTSIZE=2000
SAVEHIST=1000

# keyboard
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char

# homebrew
if [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
        eval $( /home/linuxbrew/.linuxbrew/bin/brew shellenv )
fi

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
