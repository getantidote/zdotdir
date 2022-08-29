#
# completions
#

# Set any supplemental completions directories before compinit is run.
#fpath=(${ZDOTDIR}/completions(-/FN) $fpath)

ZSH_COMPDUMP=${XDG_CACHE_HOME:-$HOME/.cache}/zsh/compdump
[[ -d ${ZSH_COMPDUMP:h} ]] || mkdir -p ${ZSH_COMPDUMP:h}

# If one of your plugins didn't run compinit, you'll have to uncomment this line:
#autoload -Uz compinit && compinit -d $ZSH_COMPDUMP

# The belek/zsh-utils completion plugin introduces compstyles:
(( $+functions[compstyle] )) && compstyle zshzoo
