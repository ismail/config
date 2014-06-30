# First things first
precmd() {print -Pn "\e]0;%n@%m: %~\a"}

source ~/.zshrc-common

alias clang="clang -fuse-ld=gold"
alias clang++="clang++ -fuse-ld=gold -stdlib=libc++"
alias io="sudo iotop -o -P -a"
alias ls="ls --color"
alias lsrpm="rpm -qlp"
alias lsprovides="rpm -qp --provides"
alias lsrequires="rpm -qp --requires"
alias lszip="unzip -l"
alias lstar="tar -tf"
alias open="xdg-open"
alias result="osc results -v"
alias slog="sudo journalctl -eaf|grep -v 'gnome-session'"
alias ulog="journalctl -eaf|grep -v 'gnome-session'"

[ -x /usr/bin/keychain ] && keychain --nogui -q id_rsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh

custom_config="$HOME/.zshrc-`uname -n|cut -f1 -d'.'`"
[ -f $custom_config ] && source $custom_config
