# zdotdir

> A sample Zsh config using the antidote plugin manager

## Description

This project aims to give you an example Zsh config that uses [antidote] as a plugin manager and pulls some amazing Zsh plugins together. Consider it an example configuration of how to use antidote. Feel free to borrow from it for your own config, or fork it and make it your own.

## What's included

A sample antidote `.zsh_plugins.txt` file that bundles plugins with the following plugin provided features:
- Better Zsh defaults
- [Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [History substring searching](https://github.com/zsh-users/zsh-history-substring-search)
- [Syntax highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
- <kbd>TAB</kbd> completions
- The popular [Powerlevel10k prompt](https://github.com/romkatv/powerlevel10k)
- A few goodies from [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)
- A `functions` directory for lazy-loaded functions
- Lots of [helpful plugins](https://github.com/unixorn/awesome-zsh-plugins)!
- And much more, all without compromising shell speed :rocket:

## Installation

Clone this project to `$ZDOTDIR`, and then make `~/.zshenv` source `$ZDOTDIR/.zshenv`.

```zsh
# clone this project
ZDOTDIR=~/.config/zsh
git clone --branch kickstart https://github.com/getantidote/zdotdir $ZDOTDIR

# source the .zshenv from ZDOTDIR
[[ -f ~/.zshenv ]] && mv -f ~/.zshenv ~/.zshenv.bak
echo ". $ZDOTDIR/.zshenv" > ~/.zshenv

# start a new zsh session
zsh
```

[antidote]: https://getantidote.github.io
