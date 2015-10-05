#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
#sudo -v
# Keep-alive: update existing `sudo` time stamp until the script has finished.
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install brew apps
brew install archey httpie node siege tree wget

# Install Cask Apps
brew install caskroom/cask/brew-cask
brew cask install appcleaner caffeine cheatsheet diddumsdeux dropbox evernote firefox kaleidoscope kitematic moom mplayerx paragon-ntfs spotify sublime-text the-unarchiver theine tower virtualbox

# Install Cask Quicklook Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package provisionql

# Remove outdated versions from the cellar.
brew cleanup
