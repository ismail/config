# Uncomment to start profiling
#zmodload zsh/zprof

autoload -U colors
colors

# Enable completions
autoload -Uz compinit

# History
typeset HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Key bindings
bindkey -e             # emacs key bindings
bindkey ' ' magic-space  # also do history expansion on space

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

bindkey "${terminfo[kbs]}"   backward-delete-char
bindkey "${terminfo[kdch1]}" delete-char
bindkey "${terminfo[kich1]}" overwrite-mode
bindkey "${terminfo[kcud1]}" down-line-or-history
bindkey "${terminfo[kcub1]}" backward-char
bindkey "${terminfo[kcuf1]}" forward-char

bindkey '\e[A' history-beginning-search-backward # Up
bindkey '\e[B' history-beginning-search-forward # Down
bindkey '\eOA' history-beginning-search-backward
bindkey '\eOB' history-beginning-search-forward
bindkey '^L' push-line # Push command into buffer
bindkey "^R" history-incremental-pattern-search-backward
bindkey "^S" history-incremental-pattern-search-forward

# Other options
setopt AUTOCD
setopt AUTO_LIST
setopt AUTOPUSHD
setopt BRACE_CCL
setopt CBASES
setopt COMBINING_CHARS
setopt CORRECT
setopt EXTENDED_GLOB
setopt INTERACTIVE_COMMENTS
setopt NO_AUTO_REMOVE_SLASH
setopt NO_BEEP
setopt NO_FLOW_CONTROL
setopt NONOMATCH
setopt NUMERIC_GLOB_SORT
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT
setopt RM_STAR_WAIT
setopt MULTIBYTE
setopt NOCHECKJOBS
setopt NOHUP

for opt in GLOB_STAR_SHORT; do
    [[ -n ${options[$opt]} ]] && setopt $opt
done

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes

alias ls="ls -F -v --color --show-control-chars"

# less(1) options
export LESS="-R"
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;016m\E[48;5;220m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

export LC_ALL=C.UTF-8
export MALLOC_CHECK_=2
export TERM=xterm-256color
export VISUAL="vim"
export WINEDEBUG=fixme-all
typeset PS1='%(?.%(!.#.;).%F{6}%B;%b%f) '

# https://stackoverflow.com/a/5578718/35060
export ALTERNATE_EDITOR=""

compinit

# Uncomment to print profiling results
#zprof
