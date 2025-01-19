# prompt
PS1="
%F{cyan}%n@%M %~%f
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

# aliases
alias bt='npm run build && npm run test'
alias countfiles='find . -maxdepth 1 -type d -exec sh -c "echo {}; ls -1 {} | wc -l" \; | xargs -n 2 | awk "{print $1"" ""$2}"'
alias dig='dig +nocomments +nocmd +noquestion +nostats'
alias dps='docker ps --all --format "table {{.Names}}\t{{.Ports}}\t{{.Status}}"'
alias gc='git pull && git remote prune origin && git for-each-ref --format "%(refname:short)" refs/heads | grep --invert-match main | xargs git branch --delete --force'
alias git-has-changes='test -n "$( git status --porcelain )"'
alias gp='git pull'
alias gpm='git pull origin main'
alias ll='ls -Al'
alias npm-upd='rm -rf node_modules; rm package-lock.json; npm i; npm audit --fix; npm ddp; npm ci'
alias ns='npm run start'
alias sudo='sudo '
each() { for dir in */; do pushd $dir; eval $@; popd; done }
