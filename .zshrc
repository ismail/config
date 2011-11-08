source ~/.zshrc-common

export PATH=/kutu/binaries/android-sdk/platform-tools:/kutu/binaries/android-sdk/tools:$PATH
export MALLOC_PERTURB_=$(($RANDOM % 255 + 1))
alias lsrpm="rpm -qlp"
alias opm="osc -Apm"
alias isc="osc -Aibs"
alias wi="emacsclient -c"
alias io="sudo iotop -o -P -a"
alias result="osc results -v"

keychain --nogui -q id_rsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh

touch /tmp/noautobuild

