#!/usr/bin/env fish

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ "$(command -v vim)" ]; then
vim +PluginInstall +qall
fi
