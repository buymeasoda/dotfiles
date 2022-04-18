#!/bin/bash

echo
echo "Configuring macOS system settings"
echo

# Dock
defaults write com.apple.dock show-recents -bool false
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Finder
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf" # (current folder)
defaults write com.apple.finder NewWindowTarget -string "PfDe" # (desktop folder)
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv" # (list view)

# Keyboard
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Save Dialog
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Hot Corners
defaults write com.apple.dock wvous-bl-corner -int 10 # (sleep display)

# Refresh
killall Dock Finder ControlStrip
