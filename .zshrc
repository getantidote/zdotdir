#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

# Zsh options.
setopt extended_glob

# Set OMZ variables
ZSH_THEME=robbyrussell

# Source zstyles you might use with antidote.
[[ -e ${ZDOTDIR:-$HOME}/.zstyles ]] && source ${ZDOTDIR:-$HOME}/.zstyles

# Autoload functions you might want to use with antidote.
ZFUNCDIR=${ZDOTDIR:-$HOME}/functions
fpath=($ZFUNCDIR $fpath)
autoload -Uz $fpath[1]/*(.:t)

# Clone antidote if necessary.
[[ -d ${ZDOTDIR:-$HOME}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-$HOME}/.antidote

# Create an amazing Zsh config using antidote plugins.
source ${ZDOTDIR:-$HOME}/.antidote/antidote.zsh
antidote load

# Source aliases you like.
[[ -e ${ZDOTDIR:-$HOME}/.aliases ]] && source ${ZDOTDIR:-$HOME}/.aliases

# Configure OMZ plugins with scripts in conf.d.
for zlib in ${ZDOTDIR:-$HOME}/conf.d/*.zsh; source $zlib
unset zlib
