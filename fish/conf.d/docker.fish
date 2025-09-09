# Docker
type -q docker && docker completion fish | source

# OrbStack
type -q orbctl && orbctl completion fish | source
source ~/.orbstack/shell/init2.fish 2>/dev/null || :
