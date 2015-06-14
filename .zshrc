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

alias clang="clang -std=c11 $EXTRA_CLANG_FLAGS"
alias clang++="clang++ -std=c++14 $EXTRA_CLANG_FLAGS"

[ -x =keychain ] && keychain -Q --nogui --agents ssh -q id_ed25519 id_rsa
[ -z "$HOSTNAME" ] && HOSTNAME=$(uname -n)
[ -f $HOME/.keychain/$HOSTNAME-sh ] &&
. $HOME/.keychain/$HOSTNAME-sh

# Update completion
autoload -U compinit
compinit
