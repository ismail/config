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

[ -f ~/.ssh-agent ] && . ~/.ssh-agent
if [ ! -e /proc/$SSH_AGENT_PID/cwd ]; then
    ssh-agent | sed '$ d' > ~/.ssh-agent
    . ~/.ssh-agent
    ssh-add ~/.ssh/id_{ed25519,rsa}
fi

# Update completion
autoload -U compinit
compinit -C
