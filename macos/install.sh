#!/usr/bin/env bash

# Update everything
brew update
brew upgrade
brew cask upgrade

# Install command line tools
brew install ack
brew install git
brew install grep
brew install imagemagick
brew install mas
brew install optipng
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install tree
brew install wget
brew install woff2

# Development
brew install node
npm install --global npm

# Apps
brew cask install authy
brew cask install docker
brew cask install brave-browser
brew cask install dbeaver-community
brew cask install fork
brew cask install handbrake
brew cask install imageoptim
brew cask install insomnia
brew cask install subler
brew cask install transmission
brew cask install virtualbox
brew cask install visual-studio
brew cask install visual-studio-code

# App Store Apps
mas install 497799835 # Xcode
mas install 409203825 # Numbers
mas install 409201541 # Pages
mas install 409183694 # Keynote
mas install 408981434 # iMovie
mas install 407963104 # Pixelmator
mas install 425424353 # The Unarchiver
mas install 485812721 # TweetDeck
mas install 553245401 # Friendly Streaming
mas install 1295203466 # Microsoft Remote Desktop

# Fonts
brew cask install font-fira-code

# Remove outdated versions from the cellar.
brew cleanup
