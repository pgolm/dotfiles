#!/usr/bin/env fish

set -U pipefail

curl -sL git.io/fisher | source && fisher update
