if command --search fzf >/dev/null
    fzf --fish | FZF_CTRL_R_COMMAND= source
end
