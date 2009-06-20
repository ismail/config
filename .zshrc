source ~/.zshrc-common

alias ls="ls --color"
alias m="matlab -nodesktop -nosplash"
alias mac="ssh namtrac.ath.cx"

keychain --nogui -q id_rsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh
