function server --argument port --description "Launch Python server and browser for current directory"
  if not test -n "$port"
    set port 8000
  end
  open "http://localhost:$port/"
  python -m SimpleHTTPServer "$port"
end
