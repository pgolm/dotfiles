#!/usr/bin/env bash

if [ -x "$(command -v fish)" ]; then
    curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher

    fisher install rafaelrinaldi/pure
fi
