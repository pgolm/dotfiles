#!/usr/bin/env bash

if ! [ -x "$(command -v curl)" ]; then
  echo 'Error: curl is not installed.' >&2
  exit 1
fi

if ! [ -x "$(command -v git)" ]; then
  echo 'Error: git is not installed.' >&2
  exit 1
fi

if [ ! -e "$HOME/.bin/chezmoi" ]; then
    curl -sfL https://git.io/chezmoi | sh -s -- -b "$HOME/.bin"
fi

if [ ! -d "$HOME/.local/share/chezmoi" ]; then
    $HOME/.bin/chezmoi init https://github.com/pgolm/dotfiles.git
else
    $HOME/.bin/chezmoi update
fi