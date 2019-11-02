#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install command line tools
brew install ack
brew install git
brew install grep
brew install imagemagick
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
brew cask install imageoptim
brew cask install insomnia
brew cask install subler
brew cask install transmission
brew cask install virtualbox
brew cask install visual-studio
brew cask install visual-studio-code

# Fonts
brew cask install font-fira-code

# Remove outdated versions from the cellar.
brew cleanup
