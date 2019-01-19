function tm --argument session --description 'Open or attach tmux session using iTerm enhancements'
  set -l active_sessions (tmux ls 2> /dev/null)
  if test -n "$active_sessions"
    echo "** tmux sessions **"\n
    echo "$active_sessions"\n
  end

  if not test -n "$session"
    set session 'dev'
  end

  if tmux has-session -t $session 2> /dev/null
    tmux -CC attach-session -t $session
  else
    tmux -CC new-session -s $session
  end
end
