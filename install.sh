#!/usr/bin/env bash

if [ ! -e "$HOME/.bin/chezmoi" ]; then
    curl -sfL https://git.io/chezmoi | sh -s -- -b "$HOME/.bin"
fi

# $HOME/.bin/chezmoi init  --apply git@github.com:pgolm/dotfiles.git
$HOME/.bin/chezmoi init git@github.com:pgolm/dotfiles.git