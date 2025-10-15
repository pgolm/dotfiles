# shellcheck shell=fish

# Initialize homebrew paths
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

set -g fish_greeting # Unset welcome message
set -g EDITOR nvim

alias vim='nvim'
alias vi='nvim'

# Initialize Starship prompt if available
if command -s starship > /dev/null
    starship init fish | source
end

# Initialize Mise if available
if command -s mise > /dev/null
    mise activate fish | source
end

# Initialize Atuin if available
if command -s atuin > /dev/null
    atuin init fish --disable-up-arrow | source
end

# Initialize Atuin if available
if command -s zoxide > /dev/null
    zoxide init fish | source
end
