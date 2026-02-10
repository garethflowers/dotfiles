# brew
type brew &> /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

# cli tools
brew install \
	btop \
	ffmpeg \
	htop \
	nano \
	nvm \
	obfs4proxy \
	optipng \
	tor \
	tree \
	watch \
	wget \
	yt-dlp

# dev tools
npm install --global npm

# apps
brew install \
	brave-browser \
	font-hack \
	ghostty \
	imageoptim \
	subler \
	visual-studio-code \
	zed

mas install \
	1289583905 \
	1444636541 \
	310633997 \
	361285480 \
	361304891 \
	361309726 \
	408981434 \
	424389933 \
	497799835

# cleanup
brew cleanup

# copy configs
rsync --archive --human-readable --no-perms --verbose ./src/ ~/
source ~/.zshrc
