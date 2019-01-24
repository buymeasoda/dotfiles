# Configuration
abbr -ag dot 'code ~/.dotfiles'
abbr -ag fbi 'code /usr/local/share/fish'

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

# Find files
abbr -ag fn 'find . -name'

# History
abbr -ag h 'history'
abbr -ag hs 'history | grep -i'

# Path
abbr -ag pt 'printf "%s\n" $PATH'

# Flush DNS cache
abbr -ag flush 'dscacheutil -flushcache'

# Web Tools
abbr -ag bs 'browser-sync start --server --watch'

# Mercurial
abbr -ag hgr 'hg revert'
abbr -ag hga 'hg amend'
abbr -ag hgar 'hg amend --rebase'
abbr -ag hgsc 'hg status --change .'

# tmux
abbr -ag tml 'tmux ls'
abbr -ag tmk 'tmux kill-session -t'
abbr -ag tmks 'tmux kill-server'

# npm
abbr -ag npml 'npm list --depth=0'
abbr -ag npmlg 'npm list --global --depth=0'

# Xcode
abbr -ag xcl 'xcode-select -p'
abbr -ag xcs 'sudo xcode-select -s'
abbr -ag simls 'fbsimctl list'
abbr -ag simclr 'fbsimctl --delete-all create --all-missing-defaults'

# Files
abbr -ag doc 'open ~/Documents'
abbr -ag lap 'open ~/Library/Application\ Support'
abbr -ag notes 'code ~/Desktop/Notes'

# Download youtube video (Usage: yt 'http://www.youtube.com/watch?v=abc123')
abbr -ag yt 'youtube-dl -f best[ext=mp4]'
