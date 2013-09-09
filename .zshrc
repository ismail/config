source ~/.zshrc-common

export PATH=/havana/sources/depot_tools:/havana/binaries/android-sdk-linux/platform-tools:/havana/binaries/android-sdk-linux/tools:$PATH
export MALLOC_PERTURB_=$(($RANDOM % 255 + 1))
export PAGER="most"
alias less="most"
alias lsrpm="rpm -qlp"
alias lsprovides="rpm -qp --provides"
alias lsrequires="rpm -qp --requires"
alias lszip="unzip -l"
alias lstar="tar -tf"
alias open="xdg-open"
alias opm="osc -Apm"
alias ibs="osc -Aibs"
alias io="sudo iotop -o -P -a"
alias result="osc results -v"
alias qemu="qemu-system-x86_64 -enable-kvm -usb -device usb-ehci,id=ehci -vga vmware -m 4G"
alias cg++="clang++ -stdlib=libc++ -lc++abi"

[ -x /usr/bin/keychain ] && keychain --nogui -q id_rsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh
