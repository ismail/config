# Don't process Ctrl-s and Ctrl-q
[[ $- == *i* ]] && stty -ixon -ixoff
