# prompt
PS1="%F{cyan}%n@%M %~%f
%B%F{magenta}▶ %f%b"

# completion
autoload -Uz compinit
compinit

# correction
unsetopt correctall

# history
export HISTFILE=~/.history
export HISTSIZE=2000
export SAVEHIST=1000

# env
export EDITOR=/usr/bin/nano
export VISUAL=/usr/bin/nano

# aliases
alias bt='npm run build && npm run test'
alias cf='find . -maxdepth 1 -type d -exec sh -c "echo {}; ls -1 {} | wc -l" \; | xargs -n 2 | sort | column -t'
alias dps='docker ps --all --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias gc='git pull && git remote prune origin && git for-each-ref --format "%(refname:short)" refs/heads | grep --invert-match main | xargs git branch --delete --force'
alias git-has-changes='test -n "$( git status --porcelain )"'
alias gp='git pull'
alias gpm='git pull origin main'
alias ll='ls -Al'
alias npm-upd='rm -rf node_modules package-lock.json; npm install; npm audit --fix; npm dedupe; npm ci'
alias ns='npm run start'

each() {
	local -r command=${1:?"At least one command must be specified."}
	for dir in */; do
		pushd -q $dir || continue;
		"$@";
		popd -q || continue;
	done
}

# brew
if [ -x "/opt/homebrew/bin/brew" ]; then
	eval "$( "/opt/homebrew/bin/brew" shellenv )"
fi

# opencode
if [ -d "$HOME/.opencode/bin" ]; then
	export PATH=$HOME/.opencode/bin:$PATH
fi

# nvm
if [ -d "$HOME/.nvm" ]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
	[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
fi
