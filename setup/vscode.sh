#!/bin/bash

echo
echo "Configuring VS Code"
echo

# Extensions
code --install-extension alefragnani.Bookmarks
code --install-extension byCedric.vscode-expo
code --install-extension dbaeumer.vscode-eslint
code --install-extension dracula-theme.theme-dracula
code --install-extension esbenp.prettier-vscode
code --install-extension file-icons.file-icons
code --install-extension flowtype.flow-for-vscode
code --install-extension mgmcdermott.vscode-language-babel
code --install-extension Orta.vscode-jest
code --install-extension skyapps.fish-vscode
code --install-extension sourcegraph.sourcegraph
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension vsmobile.vscode-react-native

# Settings
ln -sf ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/.dotfiles/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets
ln -sf ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
