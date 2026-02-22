if command --search try-rs >/dev/null
    set -gx TRY_CONFIG_DIR ~/.config/try-rs
    alias try='try-rs'
    try-rs --setup-stdout fish | source
    try-rs --completions fish | source
end
