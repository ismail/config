# Don't process Ctrl-s and Ctrl-q
[[ $- == *i* ]] && stty -ixon -ixoff

# Start with a minimal path
PATH=$HOME/bin:/usr/bin:/bin:/usr/local/bin:/sbin:/usr/sbin
