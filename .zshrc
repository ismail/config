source ~/.zshrc-common

if [ ! -z $COMSPEC ]; then
    os=windows
elif [ ! -z $__CF_USER_TEXT_ENCODING ]; then
    os=mac
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

# Highlight options
zle_highlight=(
    isearch:fg=yellow,underline
    region:standout
    special:standout
    suffix:none
)

# Update completion
autoload -U compinit
compinit -C

# After this point its only ssh-agent related code
# and nothing else
#
[ -e ~/.noagent ] && return

[ -f ~/.ssh-agent ] && . ~/.ssh-agent
if [ ! -e /proc/$SSH_AGENT_PID/cmdline ]; then
    ssh-agent | head -n -1 > ~/.ssh-agent
    . ~/.ssh-agent
fi
