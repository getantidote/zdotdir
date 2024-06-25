#
# history: Set better history values
#

HISTSIZE=100000
SAVEHIST=100000
HISTFILE=${XDG_DATA_HOME:-$HOME/.local/share}/zsh/history
[[ -d ${HISTFILE:h} ]] || mkdir -p ${HISTFILE:h}
