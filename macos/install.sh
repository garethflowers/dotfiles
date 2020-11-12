# brew
type brew &> /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Update everything
brew update
brew upgrade
brew cask upgrade

# Install command line tools
brew install ack
brew install curl
brew install git
brew install grep
brew install imagemagick
brew install mas
brew install nano
brew install optipng
brew install tree
brew install wget
brew install woff2
brew install zsh

# Development
brew install node
npm install --global npm

# Apps
brew cask install authy
brew cask install brave-browser
brew cask install docker
brew cask install homebrew/cask-versions/firefox-developer-edition
brew cask install homebrew/cask-fonts/font-fira-code
brew cask install hyper
brew cask install imageoptim
brew cask install insomnia
brew cask install subler
brew cask install visual-studio-code

# App Store Apps
mas install 497799835 # Xcode
mas install 409203825 # Numbers
mas install 409201541 # Pages
mas install 409183694 # Keynote
mas install 408981434 # iMovie
mas install 407963104 # Pixelmator
mas install 1482454543 # Twitter
mas install 553245401 # Friendly Streaming	

# Remove outdated versions from the cellar.
brew cleanup

# Download config files
curl -fsS -o ~/.zshrc https://raw.githubusercontent.com/garethflowers/dotfiles/master/src/.zshrc

# Copy configs
#rsync --archive --human-readable --no-perms --verbose ./src/ ~/
#source ~/.zshrc
