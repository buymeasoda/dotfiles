# Spin up a python server
function server() {
  local port="${1:-8000}"
  sleep 1 && open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}

# Spin up a PHP server
function phpserver() {
  local port="${1:-8000}"
  sleep 1 && open "http://localhost:${port}/"
  php -S localhost:"$port"
}

# Show prompt colors
function show_colors () {
  for code in {0..255}; do echo -e "\033[1;38;5;${code}m $code: Color code demonstration"; done
}

# Enter directory and list contents
function cl() {
  cd $1 && l
}

# Make directories and enter last dir provided
function mkcd() {
  if [ -n "$1" ]; then
    mkdir -p "$@";
    cd "$_";
  fi
}
