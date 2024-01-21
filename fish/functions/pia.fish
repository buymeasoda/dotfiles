function pia --description 'Manage pia daemon'
  set -l action $argv[1]

  if not string match -qr '^(start|stop|status)$' -- $action
    echo 'usage: pia [start|stop|status]'
    return
  end

  switch $action
    case start
      sudo launchctl load /Library/LaunchDaemons/com.privateinternetaccess.vpn.daemon.plist
      echo 'pia-daemon enabled'
    case stop
      sudo launchctl unload /Library/LaunchDaemons/com.privateinternetaccess.vpn.daemon.plist
      echo 'pia-daemon disabled'
    case status
      set -l output (sudo launchctl list | grep private | wc -l)
      if test $output -eq 0
        echo 'pia-daemon disabled'
      else
        echo 'pia-daemon enabled'
      end
  end
end
