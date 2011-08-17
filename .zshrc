source ~/.zshrc-common

export PATH=/kutu/stuff/binaries/android-sdk/platform-tools:/kutu/stuff/binaries/android-sdk/tools:$PATH
export MALLOC_PERTURB_=$(($RANDOM % 255 + 1))
alias lsrpm="rpm -qlp"
alias opm="osc -Apm"
alias wi="emacsclient -c"

keychain --nogui -q id_rsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh
