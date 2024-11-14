# Configuration
abbr -ag dot 'code ~/.dotfiles'

# Fish
abbr -ag abs 'abbr --show | grep'

# Reload Shell
abbr -ag rl 'exec $SHELL'

# Ref Docs
abbr -ag ref 'open "obsidian://open?vault=refdocs"'
abbr -ag refc 'code ~/refdocs'

# Dev Notes
abbr -ag dev 'open "obsidian://open?vault=devnotes"'
abbr -ag devc 'code ~/devnotes'

# Learning
abbr -ag ck 'cd ~/projects/learning/kata; code ~/projects/learning/kata;'

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
abbr -ag ga 'git add'
abbr -ag gaa 'git add .'
abbr -ag gam 'git amend'
abbr -ag gb 'git branch'
abbr -ag gbc 'git checkout -b'
abbr -ag gbd 'git branch --delete'
abbr -ag gc --set-cursor=@ 'git ci -m "@"'
abbr -ag gcl 'git clone'
abbr -ag gco 'git checkout'
abbr -ag gd 'git diff'
abbr -ag gdw 'git diff --color-words'
abbr -ag gds 'git diff --staged'
abbr -ag gl 'git log'
abbr -ag glp 'git log -p'
abbr -ag glg 'git log --graph'
abbr -ag glo 'git log --oneline'
abbr -ag gm 'git mv'
abbr -ag gpl 'git pull'
abbr -ag gps 'git push'
abbr -ag gr 'git checkout'
abbr -ag gra 'git checkout .'
abbr -ag grh 'git reset Head~'
abbr -ag grm 'git rm'
abbr -ag gs 'git status --short --branch'
abbr -ag gsh 'git show'
abbr -ag gss 'git show --stat'
abbr -ag gst 'git stash'
abbr -ag gsp 'git stash pop'

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
abbr -ag xpn 'npx create-expo-app --template expo-template-blank-typescript'
abbr -ag xpc 'yarn create expo-app --template expo-template-blank-typescript'
abbr -ag xpr 'nvm use; npx expo start'
abbr -ag xpi 'npx expo install'
abbr -ag xpd 'npx expo-doctor@latest; npx expo install --check'
abbr -ag xpu 'yarn add expo@latest'
abbr -ag xpf 'npx expo install --fix'

# Files
abbr -ag doc 'open ~/Documents'
abbr -ag lap 'open ~/Library/Application\ Support'

# Download youtube video (Usage: yt 'http://www.youtube.com/watch?v=abc123')
abbr -ag yt 'yt-dlp -f best[ext=mp4]'
abbr -ag yta 'yt-dlp -f bestaudio[ext=m4a] -x'
