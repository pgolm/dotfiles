set LC_ALL en_US.UTF-8
if test -d $HOME/.local/bin
    set PATH $HOME/.local/bin $PATH
end

# activate iTerm2 features
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
# iterm2_prompt_mark
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
