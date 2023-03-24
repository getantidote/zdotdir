#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

# Zsh options.
setopt extended_glob

# Functions you might use with antidote.
ismacos() {
  [[ $OSTYPE = *darwin* ]] || return 1
}

# Zstyles you might use with antidote
[[ -e ${ZDOTDIR:-~}/.zsyles ]] && source ${ZDOTDIR:-~}/.zsyles

# Clone antidote if necessary.
[[ -d ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-~}/.antidote

# Create an amazing Zsh config using antidote plugins.
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load
