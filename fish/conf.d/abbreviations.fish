# Configuration
abbr -ag dot 'code ~/.dotfiles'

# Fish
abbr -ag abs 'abbr --show | grep'

# Reload Shell
abbr -ag rl 'exec $SHELL'

# RefDocs
abbr -ag ref 'code ~/refdocs'

# Homebrew
abbr -ag brewery 'brew update && brew upgrade && brew cleanup'

# Navigation
abbr -ag pd 'prevd'
abbr -ag nd 'nextd'

# VS Code
abbr -ag c 'code'
abbr -ag c. 'code .'
abbr -ag vd 'code -d'

# Soulver
abbr -ag sl 'soulver'

# Find
abbr -ag fn 'find . -name'
abbr -ag fd 'find . -type d -name'
abbr -ag ff 'find . -type f -name'

# History
abbr -ag h 'history'
abbr -ag hs 'history | grep -i'
abbr -ag hd 'history delete --contains'

# Path
abbr -ag pt 'printf "%s\n" $PATH'

# Flush DNS cache
abbr -ag flush 'dscacheutil -flushcache'

# Web / App Tools
abbr -ag bs 'browser-sync start --server --watch'

# Git
abbr -ag g 'git'
abbr -ag gs 'git status'
abbr -ag gl 'git log'
abbr -ag glp 'git log -p'
abbr -ag glg 'git log --graph'
abbr -ag glo 'git log --oneline'
abbr -ag gd 'git diff'
abbr -ag gds 'git diff --staged'
abbr -ag ga 'git amend'
abbr -ag gc 'git ci -m'
abbr -ag gr 'git co .'
abbr -ag gg 'git pull'
abbr -ag gp 'git push'

# Mercurial
abbr -ag hgs 'hg status'
abbr -ag hgd 'hg diff'
abbr -ag hgr 'hg revert'
abbr -ag hga 'hg amend'
abbr -ag hgar 'hg amend --rebase'
abbr -ag hgsc 'hg status --change .'

# tmux
abbr -ag tml 'tmux ls'
abbr -ag tmk 'tmux kill-session -t'
abbr -ag tmks 'tmux kill-server'

# npm
abbr -ag nll 'npm list --depth=0'
abbr -ag nlg 'npm list --global --depth=0'
abbr -ag nug 'npm update --global'
abbr -ag nig 'npm install --global'
abbr -ag nrg 'npm remove --global'

# yarn
abbr -ag yll 'yarn list --depth=0'
abbr -ag ylg 'yarn global list --depth=0'

# Xcode
abbr -ag xcl 'xcode-select -p'
abbr -ag xcs 'sudo xcode-select -s'

# React / React Native
abbr -ag cra 'npm create vite@latest -- --template react-ts'
abbr -ag cna 'npx react-native init --template react-native-template-typescript'

# Expo
abbr -ag nap 'npx create-expo-app --template expo-template-blank-typescript'
abbr -ag rap 'nvm use; npx expo start'

# Files
abbr -ag doc 'open ~/Documents'
abbr -ag lap 'open ~/Library/Application\ Support'

# Download youtube video (Usage: yt 'http://www.youtube.com/watch?v=abc123')
abbr -ag yt 'yt-dlp -f best[ext=mp4]'
abbr -ag yta 'yt-dlp -f bestaudio[ext=m4a] -x'
