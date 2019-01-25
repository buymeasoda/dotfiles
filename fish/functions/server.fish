function server --description "Launch local server and browser for current directory"
  argparse 'p/port=!_validate_int' 't/type=!_validate_server_type' -- $argv 2> /dev/null
  or echo 'usage: server [-p|--port] <number> [-t|--type] <node|php|python>' && return

  test -n "$_flag_port"; and set -l port $_flag_port; or set -l port 8000
  test -n "$_flag_type"; and set -l type $_flag_type; or set -l type 'node'

  open "http://localhost:$port/"

  switch $type
    case node
      http-server -p "$port"
    case php
      php -S "localhost:$port"
    case python
      python -m SimpleHTTPServer "$port"
  end
end

function _validate_server_type  --no-scope-shadowing
  if not string match -qr '^(node|php|python)$' -- $_flag_value
    return 1
  end
  return 0
end
