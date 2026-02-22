if status is-interactive
    set -gx ZELLIJ_CONFIG_DIR $HOME/.config/zellij

    if [ "$TERM" = "xterm-ghostty" ]
        eval (zellij setup --generate-auto-start fish | string collect)
    end
end
