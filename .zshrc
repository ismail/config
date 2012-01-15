source ~/.zshrc-common

export PATH=/havana/stuff/depot_tools:/havana/binaries/android-sdk/platform-tools:/havana/binaries/android-sdk/tools:$PATH
export MALLOC_PERTURB_=$(($RANDOM % 255 + 1))
alias lsrpm="rpm -qlp"
alias opm="osc -Apm"
alias isc="osc -Aibs"
alias wi="emacsclient -c"
alias io="sudo iotop -o -P -a"
alias result="osc results -v"
alias tel-ng="telnovell-ng3"
alias kvm="qemu-kvm -cpu qemu64,+ssse3,+sse4.1,+sse4.2,+x2apic,+cx16,+mmxext"
alias sigidi="osc commit --skip-validation"

keychain --nogui -q id_rsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh

touch /tmp/noautobuild

