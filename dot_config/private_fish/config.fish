set -g LC_ALL en_US.UTF-8

set -g EDITOR vim

if test -d $HOME/.local/bin
    set -x PATH $HOME/.local/bin $PATH
end

if status --is-interactive
    if command -s starship > /dev/null
        starship init fish | source
    end
end
