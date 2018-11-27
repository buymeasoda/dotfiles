
# Find files by name
alias fn="find . -name"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# Download youtube video (Usage: yt http://www.youtube.com/watch?v=abc123)
alias yt="youtube-dl -f 'best[ext=mp4]'"

# Tmux
alias tmd='(tmux has-session -t dev && tmux -CC attach-session -t dev) 2> /dev/null || tmux -CC new-session -s dev'
alias tms='(tmux has-session -t scratch && tmux -CC attach-session -t scratch) 2> /dev/null || tmux -CC new-session -s scratch'
alias tml='tmux ls'

# Mercurial
alias hgr="hg revert"
alias hga="hg amend"
alias hgar="hg amend --rebase"
alias hgsc="hg status --change ."

# xcode
alias xcl="xcode-select -p"
alias xcs="sudo xcode-select -s"
alias simls="fbsimctl list"
alias simclr="fbsimctl --delete-all create --all-missing-defaults"

# Files
alias doc="open ~/Documents"
alias lap="open ~/Library/Application\ Support"
alias notes="code ~/Desktop/Notes/"

# Configuration
alias dot="code ~/.dotfiles ~/.oh-my-zsh"
alias doz="source ~/.zshrc"
