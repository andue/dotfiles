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
brew install archey git go httpie imagemagick mas nvm siege tree wget wireshark

# Install Cask Apps
brew install caskroom/cask/brew-cask
brew cask install appcleaner atom caffeine cheatsheet dropbox firefox iterm2 kaleidoscope moneymoney mplayerx paragon-ntfs robomongo spotify shiori the-unarchiver the-unarchiver tower virtualbox

# Install Cask Quicklook Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package provisionql

# Install App Store Apps, pixelmator 1password pages slack magnet tweetbot xcode
mas install 407963104 443987910 409201541 803453959 441258766 557168941 497799835

# Remove outdated versions from the cellar.
brew cleanup
