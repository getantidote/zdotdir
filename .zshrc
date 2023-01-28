#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

#
# Profiling
#

# Load zprof first if we need to profile.
[[ ${ZPROFRC:-0} -eq 0 ]] || zmodload zsh/zprof
alias zprofrc="ZPROFRC=1 zsh"

#
# Options
#

# Set general Zsh options needed for config.
setopt extended_glob

#
# Lazy-load functions
#

# Autoload functions directory and its subdirs.
for funcdir in $ZDOTDIR/functions $ZDOTDIR/functions/*(N/); do
  fpath=($funcdir $fpath)
  autoload -Uz $fpath[1]/*(.:t)
done
unset funcdir

#
# Pre-antidote
#

# Be sure to set any supplemental completions directories before compinit is run.
fpath=(${ZDOTDIR}/completions(-/FN) $fpath)

# Add any completion zstyles.
zstyle ':completion:*:*:git:*' script $ZDOTDIR/completions/.git-completion.bash

# Set the key mapping style to 'emacs' or 'vi'.
zstyle ':prezto:module:editor' key-bindings 'emacs'

# Auto convert .... to ../..
zstyle ':prezto:module:editor' dot-expansion 'yes'

# Use sorin theme if using Prezto
zstyle ':prezto:module:prompt' theme 'sorin'

#
# antidote
#

# Set the name of the static .zsh plugins file antidote will generate.
zsh_plugins=${ZDOTDIR:-~}/.zsh_plugins.zsh

# Ensure you have a .zsh_plugins.txt file where you can add plugins.
[[ -f ${zsh_plugins:r}.txt ]] || touch ${zsh_plugins:r}.txt

# Lazy-load antidote.
fpath+=(${ZDOTDIR:-~}/.antidote)
autoload -Uz $fpath[-1]/antidote

# Generate static file in a subshell when .zsh_plugins.txt is updated.
if [[ ! $zsh_plugins -nt ${zsh_plugins:r}.txt ]]; then
  (antidote bundle <${zsh_plugins:r}.txt >|$zsh_plugins)
fi

# Source your static plugins file.
source $zsh_plugins

# vim: ft=zsh sw=2 ts=2 et
