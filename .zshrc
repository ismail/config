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

# Highlight options, such as ctrl-r highlight
zle_highlight=(
    isearch:fg=yellow,underline
    region:standout
    special:standout
    suffix:none
)

# Update completion
autoload -U compinit
compinit -C

# mingw shortcuts
win32=i686-x86_64-w64-mingw32
win64=x86_64-w64-mingw32

# base16 colors for shell
source ~/.base16-atelier-heath.sh

custom_config="$HOME/.zshrc-$os"
[ -f $custom_config ] && source $custom_config

custom_funcs="$HOME/.zshfuncs-$os"
[ -f $custom_funcs ] && source $custom_funcs

host_config="$HOME/.zshrc-$(hostname)"
[ -f $host_config ] && source $host_config

local_config="$HOME/.zshrc-local"
[ -f $local_config ] && source $local_config

PATH=~/bin:$PATH
# Remove any duplicates
export -U PATH
