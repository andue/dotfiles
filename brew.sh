#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install brew apps
brew install archey curl node siege tree wget

# Install Cask Apps
brew install caskroom/cask/brew-cask
brew cask install alfred2 appcleaner dash dropbox google-chrome iterm kaleidoscope spotify sublime-text tower

# Remove outdated versions from the cellar.
brew cleanup