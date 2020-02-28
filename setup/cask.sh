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
brew cask install adobe-acrobat-reader
brew cask install adoptopenjdk8
brew cask install android-file-transfer
brew cask install calibre
brew cask install firefox
brew cask install google-backup-and-sync
brew cask install google-chrome
brew cask install imageoptim
brew cask install istat-menus
brew cask install iterm2
brew cask install ngrok
brew cask install opera
brew cask install postman
brew cask install private-internet-access
brew cask install qlmarkdown
brew cask install sketch
brew cask install soulver
brew cask install sourcetree
brew cask install the-unarchiver
brew cask install transmission
brew cask install transmit
brew cask install visual-studio-code
brew cask install vlc
brew cask install xscope

# Fonts
brew cask install font-meslo-for-powerline
