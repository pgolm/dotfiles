set -g LC_ALL en_US.UTF-8
if test -d $HOME/.local/bin
    set PATH $HOME/.local/bin $PATH
end

# iterm2_prompt_mark
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

if command -s starship > /dev/null
    starship init fish | source
end