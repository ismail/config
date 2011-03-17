source ~/.zshrc-common

alias ls="ls --color"
export PATH="/usr/local/android-sdk/tools:/usr/local/android-sdk/platform-tools:/sbin":$PATH
export MALLOC_PERTURB_=$(($RANDOM % 255 + 1))

keychain --nogui -q id_rsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh
