# brew
type brew &> /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

# Install command line tools
brew install htop
brew install nano
brew install optipng

# Development
brew install node
npm install --global npm

# Apps

brew install homebrew/cask-fonts/font-fira-code
brew install homebrew/cask/brave-browser
brew install homebrew/cask/docker
brew install homebrew/cask/handbrake
brew install homebrew/cask/imageoptim
brew install homebrew/cask/insomnia
brew install homebrew/cask/subler
brew install homebrew/cask/visual-studio-code

# App Store Apps
mas install 497799835 # Xcode
mas install 409203825 # Numbers
mas install 409201541 # Pages
mas install 409183694 # Keynote
mas install 408981434 # iMovie
mas install 407963104 # Pixelmator

# Remove outdated versions from the cellar.
brew cleanup

# Copy configs
rsync --archive --human-readable --no-perms --verbose ./src/ ~/
source ~/.zshrc
