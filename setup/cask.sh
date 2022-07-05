#!/bin/bash

echo
echo "Installing application casks and fonts"
echo

# Update
brew upgrade --cask

# Casks
brew install --cask adobe-acrobat-reader
brew install --cask adoptopenjdk/openjdk/adoptopenjdk11
brew install --cask android-file-transfer
brew install --cask android-studio
brew install --cask calibre
brew install --cask google-chrome
brew install --cask imageoptim
brew install --cask istat-menus
brew install --cask iterm2
brew install --cask ngrok
brew install --cask postman
brew install --cask private-internet-access
brew install --cask qlmarkdown
brew install --cask soulver
brew install --cask the-unarchiver
brew install --cask transmission
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask xscope

# Fonts
brew install --cask homebrew/cask-fonts/font-meslo-for-powerline
