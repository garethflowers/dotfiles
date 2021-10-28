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
HISTFILE=~/.history
HISTSIZE=2000
SAVEHIST=1000

# env
export EDITOR=/usr/bin/nano
export VISUAL=/usr/bin/nano

###########
# aliases #
###########

alias afk='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
alias bt='npm run build && npm run test'
alias dig='dig +nocomments +nocmd +noquestion +nostats'
alias dps='docker ps --all --format "table {{.Names}}\t{{.Ports}}\t{{.Status}}" | (read -r; printf "%s\n" "$REPLY"; sort)'
alias gc='git pull && git remote prune origin && git for-each-ref --format "%(refname:short)" refs/heads | grep --invert-match main | xargs git branch --delete --force'
alias git-has-changes='test -n "$( git status --porcelain )"'
alias git-push-mr='git push --set-upstream origin --push-option merge_request.create --push-option merge_request.target=master --push-option merge_request.merge_when_pipeline_succeeds'
alias gp='git pull'
alias gpm='git pull origin master'
alias ll='ls -Al'
alias npmupd='rm -rf node_modules; rm package-lock.json; npm i; npm audit --fix; npm ddp; npm ci'
alias ns='npm run start'
alias sudo='sudo '

each() {
	for dir in *; do
		if test -d $dir; then
			cd $dir
			pwd
			eval $@
			cd -
		fi
	done
}

alias sysupdate='
	sudo softwareupdate --install -all
	brew update
	brew upgrade
	brew cleanup
	npm install --global npm; npm update --global npm
	sudo gem update --system; sudo gem update; sudo gem cleanup
'
