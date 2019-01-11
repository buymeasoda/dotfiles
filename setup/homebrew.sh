#!/bin/bash

# Install
if [[ $(command -v brew) == "" ]]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update
brew update
brew upgrade

# Shell
brew install fish
brew install zsh

# Environments
brew install node
brew install python

# Version Control
brew install git
brew install git-lfs

# Tools
brew install rsync
brew install watchman
brew install wget

# Server
brew install mysql@5.7

# Utils
brew install ffmpeg
brew install pstree
brew install rename
brew install tree
brew install yarn
brew install youtube-dl

# Cleanup
brew cleanup
