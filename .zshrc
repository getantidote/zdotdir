#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

#
# Options
#

setopt extended_glob

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU path fpath

# Set the list of directories that zsh searches for commands.
path=(
  $HOME/{,s}bin(N)
  /opt/{homebrew,local}/{,s}bin(N)
  /usr/local/{,s}bin(N)
  $path
)
(( $+commands[brew] )) && source <(brew shellenv)

#
# Zstyles
#

# Source zstyles you might use with antidote.
[[ -e ${ZDOTDIR:-$HOME}/.zstyles ]] && source ${ZDOTDIR:-$HOME}/.zstyles

#
# Plugins
#

# Clone antidote if necessary.
[[ -d ${ZDOTDIR:-$HOME}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-$HOME}/.antidote

# Compose your perfect Zsh config using plugins.
source ${ZDOTDIR:-$HOME}/.antidote/antidote.zsh
antidote load
