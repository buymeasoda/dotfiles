#!/bin/bash

echo
echo "Installing VS Code extensions"
echo

# Extensions
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension file-icons.file-icons
code --install-extension ms-vscode.vscode-typescript-tslint-plugin
code --install-extension skyapps.fish-vscode
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension uloco.theme-bluloco-light
code --install-extension vsmobile.vscode-react-native

# Settings
ln -sf ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/.dotfiles/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets
ln -sf ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
