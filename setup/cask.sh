#!/bin/bash

echo
echo "Installing application casks and fonts"
echo

# Update
brew upgrade --cask

# Casks
brew install --cask zulu@17
brew install --cask android-file-transfer
brew install --cask android-studio
brew install --cask google-chrome
brew install --cask imageoptim
brew install --cask istat-menus
brew install --cask iterm2
brew install --cask orbstack
brew install --cask private-internet-access
brew install --cask qlmarkdown
brew install --cask soulver
brew install --cask the-unarchiver
brew install --cask transmission
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask xscope

# Fonts
brew install --cask font-meslo-lg-nerd-font
