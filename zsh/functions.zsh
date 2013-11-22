# Spin up a server
function server() {
    local port="${1:-8000}"
    sleep 1 && open "http://localhost:${port}/"
    python -m SimpleHTTPServer "$port"
}

function show_colors () {
    for code in {0..255}; do echo -e "\033[1;38;5;${code}m $code: Color code demonstration"; done
}

function cl() {
	cd $1 && ls
}