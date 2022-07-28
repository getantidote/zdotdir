#
# .zshrc
#

### antidote
# drive our config entirely with plugins
if ! [[ -e $ZDOTDIR/.antidote ]]
then
  git clone https://github.com/mattmc3/antidote.git $ZDOTDIR/.antidote
fi
source $ZDOTDIR/.antidote/antidote.zsh
antidote load
