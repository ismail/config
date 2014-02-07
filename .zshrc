# First things first
precmd() {print -Pn "\e]0;%n@%m: %~\a"}

source ~/.zshrc-common

alias ls="ls --color"
alias lsrpm="rpm -qlp"
alias lsprovides="rpm -qp --provides"
alias lsrequires="rpm -qp --requires"
alias lszip="unzip -l"
alias lstar="tar -tf"
alias open="xdg-open"
alias io="sudo iotop -o -P -a"
alias result="osc results -v"
alias cg++="clang++ -stdlib=libc++ -lc++ -lc++abi"
alias ulog="journalctl -eaf|grep -v 'gnome-session'"
alias slog="sudo journalctl -eaf|grep -v 'gnome-session'"

[ -x /usr/bin/keychain ] && keychain --nogui -q id_rsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh
