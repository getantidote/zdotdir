#
# 03-post-antidote - Undo any settings from plugins you don't like.
#

# options
unsetopt BEEP
unsetopt HISTBEEP

# Choose your preferred keybindings.
bindkey -e   # Emacs keybindings
#bindkey -v  # Vi keybindings

# Set your prompt
autoload -Uz promptinit && promptinit
prompt pure
