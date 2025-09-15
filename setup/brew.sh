#!/bin/bash

echo
echo "Installing homebrew formula"
echo

# Install
if [[ $(command -v brew) == "" ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update
brew update
brew upgrade

# Formula
brew install cocoapods
brew install fastlane
brew install ffmpeg
brew install fish
brew install git
brew install node
brew install nvm
brew install php
brew install pstree
brew install python
brew install rename
brew install rsync
brew install starship
brew install tree
brew install watchman
brew install webp
brew install yarn
brew install yt-dlp

# Cleanup
brew cleanup
