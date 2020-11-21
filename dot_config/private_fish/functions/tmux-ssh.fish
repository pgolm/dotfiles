# Defined in - @ line 1
function tmux-ssh
  ssh -t $argv 'tmux -CC new -A -s main'
end
