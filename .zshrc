# Always start at home
cd $HOME

source ~/.zshrc-common

case $(uname -s) in
    Linux*)
        os=linux
        ;;
    CYGWIN_NT*)
        os=windows
        ;;
    Darwin*)
        os=mac
        ;;
esac

custom_config="$HOME/.zshrc-$os"
[ -f $custom_config ] && source $custom_config

custom_funcs="$HOME/.zshfuncs-$os"
[ -f $custom_funcs ] && source $custom_funcs

# Lastly the local config
local_config="$HOME/.zshrc-local"
[ -f $local_config ] && source $local_config

alias clang="clang -std=c11 $CLANG_EXTRAS"
alias clang++="clang++ -std=c++14 $CLANG_EXTRAS"

[ -x /usr/bin/keychain ] && keychain --nogui --agents ssh -q id_rsa id_ed25519
[ -z "$HOSTNAME" ] && HOSTNAME=`uname -n`
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh
