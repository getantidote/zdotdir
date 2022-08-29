#
# .zshenv
#

# ZDOTDIR gives an alternate home for zsh rather than $HOME
export ZDOTDIR=${ZDOTDIR:-$HOME/.zsh}

# XDG basedirs (https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)
export XDG_CONFIG_HOME=~/.config
export XDG_CACHE_HOME=~/.cache
export XDG_DATA_HOME=~/.local/share
export XDG_RUNTIME_DIR=~/.xdg

# define environment for non-login, non-interactive shells which don't source .zprofile
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s $ZDOTDIR/.zprofile ]]; then
  source $ZDOTDIR/.zprofile
fi
