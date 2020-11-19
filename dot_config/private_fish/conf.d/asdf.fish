if command -s brew; and test -e (brew --prefix asdf)/asdf.fish > /dev/null
    source (brew --prefix asdf)/asdf.fish
else if test -n "$ASDF_DATA_DIR" -a -d "$ASDF_DATA_DIR"
    source $ASDF_DATA_DIR/asdf.fish
else if test -d ~/.asdf
    source ~/.asdf/asdf.fish
end
