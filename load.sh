#!/bin/sh -f
for name in tmux.conf screenrc vim vimrc zsh zshenv zshrc ; do
  rm -rf ~/.${name}
  ln -fs ${PWD}/${name} ~/.${name}
done

