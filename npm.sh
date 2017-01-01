#!/usr/bin/env bash

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash

# Install command-line tools using npm.
npm install --global fast-cli how2 trash
