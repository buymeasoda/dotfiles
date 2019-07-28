function gdc --description 'Manage local git repo config for fish prompt dirty check'
  if type -q git; and not command git rev-parse --is-inside-work-tree > /dev/null 2>&1
    echo 'No git repository found'
    return
  end

  set -l action $argv[1]

  if not string match -qr '^(on|off|clear|show)$' -- $action
    echo 'usage: gdc [on|off|clear|show]'
    return
  end

  switch $action
    case on
      git config --local user.fishpromptvcsdirtycheck true
      echo 'enabled'
    case off
      git config --local user.fishpromptvcsdirtycheck false
      echo 'disabled'
    case clear
      git config --local --unset user.fishpromptvcsdirtycheck
      echo 'cleared'
    case show
      set -l setting (command git config --local user.fishpromptvcsdirtycheck 2> /dev/null)
      if [ -n "$setting" ]
        if [ $setting = true ]
          echo 'enabled'
        else if [ $setting = false ]
          echo 'disabled'
        end
      else
        echo 'cleared'
      end
  end
end
