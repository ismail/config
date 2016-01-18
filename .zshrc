# Set GPG ID before doing anything else
export GPG_ID=0x381FA1D72D72DA97

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

disabled_warnings=(-Wno-c++98-compat -Wc++98-compat-pedantic)
disabled_warnings+=(-Wno-missing-prototypes -Wno-missing-variable-declarations)
disabled_warnings+=(-Wmissing-braces -Wlanguage-extension-token)

alias clang="clang -std=c11 -Weverything $disabled_warnings -O2 -g $EXTRA_CLANG_FLAGS"
alias clang++="clang++ -std=c++14 -Weverything $disabled_warnings -O2 -g $EXTRA_CLANG_FLAGS"

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

if [ ! -f ~/.ssh/agent ]; then
    ssh-agent | head -n -1 > ~/.ssh/agent
else
    . ~/.ssh/agent
    if [ ! -e /proc/$SSH_AGENT_PID/status ]; then
        ssh-agent | head -n -1 > ~/.ssh/agent
    fi
fi

. ~/.ssh/agent
