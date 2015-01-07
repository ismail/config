# Setup PATH
export PATH=$HOME/bin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:$PATH

# Autoload functions
fpath=(~/.zsh_fpath $fpath)
autoload $(ls ~/.zsh_fpath)
