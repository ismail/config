autoload -U colors
colors

# Auto completion
autoload -U compinit
compinit

# History
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export HISTCONTROL=ignoredups
setopt SHARE_HISTORY
setopt EXTENDED_GLOB

# Key bindings
bindkey -e             # emacs key bindings
bindkey ' ' magic-space  # also do history expansion on space

# Editor
export VISUAL="nano"

bindkey "^[OH" beginning-of-line
bindkey "^[OF" end-of-line

# Other options
setopt NO_BEEP
setopt CORRECT_ALL
setopt AUTO_LIST
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT
setopt INTERACTIVE_COMMENTS
setopt NONOMATCH
setopt NOPROMPT_SP

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache

export PS1="%{$fg[green]%}[%n@%m]%{$reset_color$fg[white]%}[%D{%H:%M:%S}]%{$reset_color%}%{$fg_bold[blue]%}
[%~]>%{$reset_color%} "

alias ls="ls --color"
alias grep="grep --color"
alias cl="clear"
alias scp="rsync --compress-level=3 --partial --progress --rsh=ssh -r"
alias wi="emacsclient -t -c"
alias wix="emacsclient -c"
alias d="cd"
alias ada="/usr/gnat/bin/gnatmake"
alias mac="ssh namtrac.ath.cx"

export LC_ALL=en_US.UTF-8
export PYTHONSTARTUP=/etc/pythonstart
export PATH="/usr/lib/ccache:/usr/local/cuda/bin:$PATH"

