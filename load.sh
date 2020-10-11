#!/bin/sh -f
pwd=$PWD
for name in screenrc vim vimrc zsh zshenv zshrc ; do
  rm -rf ~/.${name}
  ln -fs ${pwd}/${name} ~/.${name}
done

