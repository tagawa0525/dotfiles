#! /bin/zsh

for name in 'pyenv' 'goenv' 'rbenv' ; do
  [ -f /etc/profile.d/${name}.sh ] && source /etc/profile.d/${name}.sh
done
unset name

alias ls='ls --color=auto'

if [[ "$(uname -r)" == *microsoft* ]]; then
  alias explorer='/mnt/c/Windows/explorer.exe .'
fi

