(( $+commands[brew] )) || return 1
eval $(brew shellenv)

autoload -Uz compinit
compinit