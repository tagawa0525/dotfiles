#! /bin/zsh

alias ls='ls --color=auto'

if [[ "$(uname -r)" == *microsoft* ]]; then
  alias explorer='/mnt/c/Windows/explorer.exe .'
fi

