# Find files by name
alias fn="find . -name"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# Download youtube video (and youtube HQ)
# Usage: yt http://www.youtube.com/watch?v=abc123xyz098
alias yt="youtube-dl -t -f 18"
alias ythq="youtube-dl -t -f 22"