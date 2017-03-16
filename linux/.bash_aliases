alias gitclean="git remote prune origin && git branch --merged | grep --extended-regexp --invert-match '(^\*|master|dev)' | xargs --no-run-if-empty git branch --delete"
