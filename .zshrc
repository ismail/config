source ~/.zshrc-common

alias ls="ls --color"
alias grep="grep --color"
alias ada="/usr/gnat/bin/gnatmake"
alias mac="ssh namtrac.ath.cx"

export PATH="/usr/lib/ccache:/usr/local/cuda/bin:$PATH"

keychain --nogui -q id_dsa
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh
