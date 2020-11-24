#!/usr/bin/env fish

if [ -n $fisher_version ]
    curl -sL git.io/fisher | source && fisher update
else
    fisher update
end
