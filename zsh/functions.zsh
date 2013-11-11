# Spin up a server
function server() {
    local port="${1:-8000}"
    sleep 1 && open "http://localhost:${port}/"
    python -m SimpleHTTPServer "$port"
}