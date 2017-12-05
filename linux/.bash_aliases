# git
alias gitclean="git remote prune origin && git branch --merged | grep --extended-regexp --invert-match '(^\*|master|dev)' | xargs --no-run-if-empty git branch --delete"

# system
alias sysupdate='sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y'
