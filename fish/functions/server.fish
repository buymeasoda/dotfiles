function server --argument port --description "Launch Python Simple HTTP Server and localhost browser for current directory"
  if not test -n "$port"
    set port 8000
  end
  open "http://localhost:$port/"
  python -m SimpleHTTPServer "$port"
end
