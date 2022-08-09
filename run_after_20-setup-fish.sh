#!/usr/bin/env -S fish -d 3

set -U pipefail

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher && fisher update
