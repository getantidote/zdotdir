# zdotdir

> A full-featured sample Zsh config using antidote

## Description

This project aims to give you an example Zsh config that uses [antidote] as a plugin manager and pulls some amazing Zsh plugins together. Consider it a starter kit for Zsh. Please borrow from it for your own config, or fork it and make it your own.

## What's included

A sample antidote `.zsh_plugins.txt` file that bundles plugins with the following plugin provided features:
- Better Zsh defaults
- Better Zsh history settings
- [Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [History substring searching](https://github.com/zsh-users/zsh-history-substring-search)
- [Syntax highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
- <kbd>TAB</kbd> completions
- The popular [Pure prompt](https://github.com/sindresorhus/pure)
- A few goodies from [Oh-My-Zsh](https://github.com/ohmyzsh/ohmyzsh)
- A few goodies from [Prezto](https://github.com/sorin-ionescu/prezto)
- A `functions` directory for lazy-loaded functions
- A `conf.d` directory for auto-sourced configs
- A `completions` directory for user added completions
- Lots of [helpful plugins](https://github.com/unixorn/awesome-zsh-plugins)!
- And much more, all without compromising shell speed :rocket:

## Installation

Clone this project to `$ZDOTDIR`, and then make a symlink to `.zshenv`.

```zsh
# clone this project
ZDOTDIR=~/.config/zsh
git clone https://github.com/getantidote/zdotdir $ZDOTDIR

# symlink .zshenv
[[ -f ~/.zshenv ]] && mv -f ~/.zshenv ~/.zshenv.bak
ln -s $ZDOTDIR/.zshenv ~/.zshenv

# start a new zsh session
zsh
```

[antidote]: https://getantidote.github.io
