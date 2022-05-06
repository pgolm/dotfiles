# set ASDF_SOURCE $HOME/.asdf/asdf.fish
# if [ ! -e $ASDF_SOURCE ]
    set ASDF_SOURCE /opt/homebrew/opt/asdf/libexec/asdf.fish
# end

if test -e $ASDF_SOURCE
    source $ASDF_SOURCE
    eval (asdf exec direnv hook fish)
end
