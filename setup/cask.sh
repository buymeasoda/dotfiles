#!/bin/bash

echo
echo "Installing application casks and fonts"
echo

# Tap
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap AdoptOpenJDK/openjdk

# Update
brew cask upgrade

# Casks
brew install --cask adobe-acrobat-reader
brew install --cask adoptopenjdk8
brew install --cask android-file-transfer
brew install --cask android-studio
brew install --cask calibre
brew install --cask firefox
brew install --cask google-backup-and-sync
brew install --cask google-chrome
brew install --cask imageoptim
brew install --cask istat-menus
brew install --cask iterm2
brew install --cask ngrok
brew install --cask opera
brew install --cask postman
brew install --cask private-internet-access
brew install --cask qlmarkdown
brew install --cask sketch
brew install --cask soulver
brew install --cask sourcetree
brew install --cask the-unarchiver
brew install --cask transmission
brew install --cask transmit
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask xscope

# Fonts
brew install --cask font-meslo-for-powerline
