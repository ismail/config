source ~/.zshrc-common

alias ls="ls --color"
alias grep="grep --color"
alias m="matlab -nodesktop -nosplash"
alias mac="ssh namtrac.ath.cx"

xrdb -merge ~/.Xdefaults

keychain --nogui -q id_dsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh
