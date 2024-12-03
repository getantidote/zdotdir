# Make Zsh respect XDG directories.
export ZDOTDIR=${ZDOTDIR:-$HOME/.config/zsh}

# Set XDG base directories.
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}
# XDG base directories not in specification.
export XDG_BIN_HOME=${XDG_BIN_HOME:-$HOME/.local/bin}

# Fish-like directories.
: ${__zsh_config_dir:=${ZDOTDIR:-${XDG_CONFIG_HOME:-$HOME/.config}/zsh}}
: ${__zsh_user_data_dir:=${XDG_DATA_HOME:-$HOME/.local/share}/zsh}
: ${__zsh_cache_dir:=${XDG_CACHE_HOME:-$HOME/.cache}/zsh}

# Ensure XDG/Zsh directories exist.
() {
    local dir
    for dir in "$@"; do
        [[ -d "${(P)dir}" ]] || mkdir -p -- "${(P)dir}"
    done
} __zsh_{config,user_data,cache}_dir XDG_{CONFIG,CACHE,DATA,STATE,BIN}_HOME
