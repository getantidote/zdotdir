#####
# .zshrc - Zsh file loaded on interactive shell sessions.
#####


#
# ???
#

# ???
# Put other .zshrc things here...


#
# Options
#

# Set general Zsh options needed for config.
setopt extended_glob interactive_comments


#
# antidote
#

# Clone antidote if it's missing.
[[ -d ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-~}/.antidote

# Load antidote.
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load


#
# Plugin settings
#

# Set your fast-syntax-highlighting theme quietly.
# fast-theme forest &>/dev/null

# Set your fast-syntax-highlighting theme.
fast-theme forest


#
# ???
#

# ???
# Put other .zshrc things here...


# vim: ft=zsh sw=2 ts=2 et
