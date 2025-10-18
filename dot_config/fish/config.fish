set -g fish_greeting # Unset welcome message
set -g EDITOR nvim

alias vim='nvim'
alias vi='nvim'

fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# Initialize Starship prompt if available
if command -s starship >/dev/null
    starship init fish | source
end

# Initialize Mise if available
if command -s mise >/dev/null
    mise activate fish | source
end

# Initialize Atuin if available
if command -s atuin >/dev/null
    atuin init fish --disable-up-arrow | source
end

# Initialize Atuin if available
if command -s zoxide >/dev/null
    zoxide init fish | source
end

# Initialize Docker completions if available
if command -s docker >/dev/null
    docker completion fish | source
end
