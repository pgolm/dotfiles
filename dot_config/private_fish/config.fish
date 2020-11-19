set LC_ALL en_US.UTF-8
set PATH $HOME/.bin $PATH

# activate iTerm2 features
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
# iterm2_prompt_mark
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
