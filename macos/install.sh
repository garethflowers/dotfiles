# brew
type brew &> /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Update everything
brew update
brew upgrade

# Install command line tools
brew install ack
brew install curl
brew install git
brew install grep
brew install htop
brew install imagemagick
brew install mas
brew install nano
brew install optipng
brew install tree
brew install wget
brew install zsh

# Development
brew install node
npm install --global npm

# Apps
brew install authy
brew install brave-browser
brew install docker
brew install homebrew/cask-fonts/font-fira-code
brew install hyper
brew install imageoptim
brew install insomnia-designer
brew install visual-studio-code

# Optional
# brew install homebrew/cask-versions/firefox-developer-edition
# brew install subler

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

# Copy configs
rsync --archive --human-readable --no-perms --verbose ./src/ ~/
source ~/.zshrc
