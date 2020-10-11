#!/bin/zsh

for name in 'pyenv' 'goenv' 'rbenv' ; do
  [ -f /etc/profile.d/${name}.sh ] && source /etc/profile.d/${name}.sh
done

alias ls='ls --color=auto'

