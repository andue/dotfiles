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
brew install autojump bat ctop fzf git htop httpie imagemagick jq mas openssl pv siege tree vim wget

# Install Cask Apps
brew tap caskroom/cask
brew cask install appcleaner atom caffeine dropbox firefox google-chrome kaleidoscope ngrok paw spotify shiori the-unarchiver wireshark

# Install Cask Quicklook Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package provisionql

# Install App Store Apps, pixelmator 1password pages keynote numbers slack magnet tweetbot
mas install 407963104 443987910 409201541 409203825 409183694 803453959 441258766 557168941

# Remove outdated versions from the cellar.
brew cleanup
