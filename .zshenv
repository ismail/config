# Don't process Ctrl-s and Ctrl-q
[[ $- == *i* ]] && /usr/bin/stty -ixon -ixoff
