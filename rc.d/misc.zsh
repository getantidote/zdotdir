#
# misc - Set general Zsh config options here, or change plugin settings.
#

#
# Options
#

# Undo options from plugins
setopt NO_BEEP       # Be quiet!
setopt NO_HIST_BEEP  # Be quiet!

#
# OMZ
#

# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/magic-enter
if [[ "$OSTYPE" == darwin* ]]; then
  MAGIC_ENTER_OTHER_COMMAND='ls -G'
else
  MAGIC_ENTER_OTHER_COMMAND='ls --color=auto'
fi
MAGIC_ENTER_GIT_COMMAND="$MAGIC_ENTER_OTHER_COMMAND && git status -sb"

#
# Zsh-Utils
#

# The belek/zsh-utils completion plugin also introduces compstyles. Let's use that!
(( ! $+functions[compstyle_zshzoo_setup] )) || compstyle_zshzoo_setup

#
# Z
#

ZSHZ_DATA=${XDG_DATA_HOME:=$HOME/.local/share}/z/data
