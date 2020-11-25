#!/usr/bin/env bash

# ensure that asdf is loaded
source $HOME/.bashrc

asdf plugin-add direnv

asdf install direnv 2.24.0
asdf global  direnv 2.24.0