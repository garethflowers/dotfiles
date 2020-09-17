############
# terminal #
############

# prompt
PS1="%F{cyan}%n@%M %~%f
%B%F{magenta}▶ %f%b"

# completion
autoload -Uz compinit
compinit

# correction
unsetopt correctall

# history
HISTFILE=~/history
HISTSIZE=2000
SAVEHIST=1000

# keyboard
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char

# env
export EDITOR=/usr/bin/nano
export VISUAL=/usr/bin/nano

# homebrew
if [ -f /home/linuxbrew/.linuxbrew/bin/brew ]; then
	eval $( /home/linuxbrew/.linuxbrew/bin/brew shellenv )
fi

###########
# aliases #
###########

# general
alias ll='ls -Al'
alias sudo='sudo '

# git
alias gc='for dir in $( find . -name ".git" )
	do cd ${dir%/*}
	echo $dir
	git remote prune origin
	git for-each-ref --format "%(refname:short)" refs/heads | grep --invert-match master | xargs git branch --delete --force
	git pull
	git gc --aggressive
	cd -
	done'

# docker
alias dps='docker ps --all --format "table {{.Names}}\t{{.Ports}}\t{{.Status}}" | (read -r; printf "%s\n" "$REPLY"; sort)'

# npm
alias bt='npm run build && npm run test'

# system
if [ `uname` = "Linux" ]; then
	alias sysupdate='
		sudo dnf update --assumeyes
		sudo dnf upgrade --assumeyes
		flatpak update
		npm install --global npm
		npm update --global npm
		sudo gem update --system
		sudo gem update
		sudo gem cleanup
	'
else
	alias showhidden="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
	alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

	alias sysupdate='
		sudo softwareupdate --install -all
		brew update
		brew upgrade
		brew cask upgrade
		brew cleanup
		npm install --global npm
		npm update --global npm
		sudo gem update --system
		sudo gem update
		sudo gem cleanup
	'
fi

# lock screen
if [ `uname` = "Linux" ]; then
	alias afk='dbus-send --type=method_call --dest=org.gnome.ScreenSaver /org/gnome/ScreenSaver org.gnome.ScreenSaver.Lock'
else
	alias afk='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
fi
