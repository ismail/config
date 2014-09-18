source ~/.zshinit
source ~/.zshrc-common

alias clang="clang -fuse-ld=gold"
alias clang++="clang++ -fuse-ld=gold -stdlib=libc++"
alias io="sudo iotop -o -P -a"
alias ls="ls --color"
alias lsdeb="dpkg -c"
alias lsrpm="rpm -qlp"
alias lsprovides="rpm -qp --provides"
alias lsrequires="rpm -qp --requires"
alias lszip="unzip -l"
alias lstar="tar -tf"
alias open="xdg-open"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias result="osc results -v"
alias slog="sudo journalctl --system -b --all"
alias ulog="journalctl --user -b --all | grep -v 'gnome-session'"
alias vssh="vagrant up && vagrant ssh"
export MALLOC_PERTURB_=69

[ -x /usr/bin/keychain ] && keychain --nogui -q id_rsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh

custom_config="$HOME/.zshrc-`uname -n|cut -f1 -d'.'`"
[ -f $custom_config ] && source $custom_config
