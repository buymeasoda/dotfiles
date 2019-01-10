# Configuration
abbr -ag dot 'code ~/.dotfiles'
abbr -ag doz 'source ~/.config/fish/config.fish'

# RefDocs
abbr -ag ref 'code ~/refdocs'

# Homebrew
abbr -ag brewery 'brew update && brew upgrade && brew cleanup'

# Find files
abbr -ag fn 'find . -name'

# Flush DNS cache
abbr -ag flush 'dscacheutil -flushcache'

# Mercurial
abbr -ag hgr 'hg revert'
abbr -ag hga 'hg amend'
abbr -ag hgar 'hg amend --rebase'
abbr -ag hgsc 'hg status --change .'

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
