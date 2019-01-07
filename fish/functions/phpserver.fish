function phpserver --argument port --description "Launch PHP server and browser for current directory"
  if not test -n "$port"
    set port 8000
  end
  open "http://localhost:$port/"
  php -S "localhost:$port"
end
