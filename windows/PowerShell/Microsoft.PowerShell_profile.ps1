function gitclean {
	git pull
	git remote prune origin
	git branch -vv | Select-String -Pattern ": gone]" | % { $_.toString().Trim().Split(" ")[0]} | % {git branch -D $_}
}
