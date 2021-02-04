# set ASDF_SOURCE $HOME/.asdf/asdf.fish
# if [ ! -e $ASDF_SOURCE ]
    set ASDF_SOURCE /usr/local/opt/asdf/asdf.fish
# end

if test -e $ASDF_SOURCE
    source $ASDF_SOURCE
    eval (asdf exec direnv hook fish)
end
