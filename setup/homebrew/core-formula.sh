#!/bin/bash

# Prerequisites: Homebrew, Xcode Command Line Tools

# Setup
brew update
brew upgrade

# Shell
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
brew install youtube-dl

# Cleanup
brew cleanup
