#!/bin/bash

echo
echo "Configuring VS Code"
echo

# Extensions
code --install-extension alefragnani.bookmarks
code --install-extension dbaeumer.vscode-eslint
code --install-extension dracula-theme.theme-dracula
code --install-extension esbenp.prettier-vscode
code --install-extension expo.vscode-expo-tools
code --install-extension file-icons.file-icons
code --install-extension flowtype.flow-for-vscode
code --install-extension github.copilot
code --install-extension github.copilot-chat
code --install-extension graphql.vscode-graphql-syntax
code --install-extension mathiasfrohlich.kotlin
code --install-extension meta.relay
code --install-extension mgmcdermott.vscode-language-babel
code --install-extension orta.vscode-jest
code --install-extension rust-lang.rust-analyzer
code --install-extension skyapps.fish-vscode
code --install-extension sourcegraph.sourcegraph
code --install-extension streetsidesoftware.code-spell-checker

# Settings
ln -sf ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/.dotfiles/vscode/snippets/ ~/Library/Application\ Support/Code/User/snippets
ln -sf ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
