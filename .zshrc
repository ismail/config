source ~/.zshrc-common

if [ ! -z $COMSPEC ]; then
    os=windows
else
    os=linux
fi

custom_config="$HOME/.zshrc-$os"
[ -f $custom_config ] && source $custom_config

custom_funcs="$HOME/.zshfuncs-$os"
[ -f $custom_funcs ] && source $custom_funcs

# Lastly the local config
local_config="$HOME/.zshrc-local"
[ -f $local_config ] && source $local_config

alias clang="clang -std=c11 $EXTRA_CLANG_FLAGS"
alias clang++="clang++ -std=c++14 $EXTRA_CLANG_FLAGS"

# Update completion
autoload -U compinit
compinit -C

# After this point its only ssh-agent related code
# and nothing else
#
[ -e ~/.noagent ] && return

[ -z $SSH_AUTH_SOCK -a -f ~/.ssh-agent ] && . ~/.ssh-agent
if [ "x$SSH_AUTH_SOCK" = "x" ]; then
    ssh-agent | head -n -1 > ~/.ssh-agent
    . ~/.ssh-agent
fi

ssh-add -l &>/dev/null || ssh-add ~/.ssh/id_ed25519
