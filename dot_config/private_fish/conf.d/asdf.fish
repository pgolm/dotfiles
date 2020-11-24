if test -e /usr/local/opt/asdf/asdf.fish
    source /usr/local/opt/asdf/asdf.fish

    eval (asdf exec direnv hook fish)
end
