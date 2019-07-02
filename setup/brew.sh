#!/bin/bash

echo
echo "Installing homebrew formula"
echo

# Install
if [[ $(command -v brew) == "" ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update
brew update
brew upgrade

# Formula
brew install ffmpeg
brew install fish
brew install git
brew install git-lfs
brew install mysql@5.7
brew install node
brew install nvm
brew install pstree
brew install rename
brew install rsync
brew install tree
brew install yarn
brew install youtube-dl

# Cleanup
brew cleanup
