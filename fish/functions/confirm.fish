function confirm --description 'Ask for user confirmation' --argument prompt
  if test -z "$prompt"
    set prompt "Continue?"
  end
  while true
    read -l -P "$prompt [y/n] " confirm
    switch $confirm
      case Y y
        return 0
      case '' N n
        return 1
    end
  end
end
