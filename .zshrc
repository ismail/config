source ~/.zshrc-common

export PATH=~/bin/depot_tools:/havana/binaries/android-sdk/platform-tools:/havana/binaries/android-sdk/tools:$PATH
export MALLOC_PERTURB_=$(($RANDOM % 255 + 1))
alias lsrpm="rpm -qlp"
alias opm="osc -Apm"
alias isc="osc -Aibs"
alias io="sudo iotop -o -P -a"
alias result="osc results -v"
alias tel-ng="telnovell-ng3"
alias kvm="qemu-kvm -usb -device usb-ehci,id=ehci -vga vmware -m 2G"

[ -x /usr/bin/keychain ] && keychain --nogui -q id_rsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh
