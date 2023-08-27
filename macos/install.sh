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
brew install font-hack
brew install brave-browser
brew install imageoptim
brew install subler
brew install visual-studio-code
mas install 497799835 # Xcode
mas install 409203825 # Numbers
mas install 441258766 # Magnet
mas install 409201541 # Pages
mas install 409183694 # Keynote
mas install 408981434 # iMovie
mas install 1289583905 # Pixelmator Pro

# Remove outdated versions from the cellar.
brew cleanup

# Copy configs
rsync --archive --human-readable --no-perms --verbose ./src/ ~/
source ~/.zshrc
