#
# Antidote: Zsh plugin manager.
#

export ANTIDOTE_REPO=${XDG_DATA_HOME:-$HOME/.local/share}/antidote
[[ -d $ANTIDOTE_REPO ]] \
    || git clone --depth 1 https://github.com/mattmc3/antidote $ANTIDOTE_REPO

bundle_file=${ZDOTDIR:-$HOME/.config/zsh}/zsh_plugins
static_file=${XDG_DATA_HOME:-$HOME/.local/share}/zsh/zsh_plugins.zsh
[[ -f $bundle_file ]] || touch $bundle_file

# Source Antidote.
source $ANTIDOTE_REPO/antidote.zsh

# Use friendly names with the bundle directory in $ANTIDOTE_HOME.
zstyle ':antidote:bundle' use-friendly-names    on
# Set custom bundle file. Default: ${ZDOTDIR:-$HOME}/.zsh_plugins
zstyle ':antidote:bundle' file                  $bundle_file
# Set custom static file. Default: ${ZDOTDIR:-$HOME}/.zsh_plugins.zsh
zstyle ':antidote:static' file                  $static_file
# Zsh compile everything, static file and all bundles.
zstyle ':antidote:*'      zcompile              yes

#
# Completions: Set completion options.
#

zstyle ':plugin:ez-compinit' 'compstyle' 'zshzoo'

#
# Plugin settings: Set options for various plugins.
#

export FZF_PATH=${XDG_DATA_HOME:-$HOME/.local/share}/fzf

#
# Wrap-up
#

# Initialize plugins statically with ${ZDOTDIR:-$HOME/.config/zsh}/zsh_plugins file.
# Note: Must be loaded after setting zstyles.
antidote load
