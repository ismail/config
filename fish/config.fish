set fish_greeting

# Set GPG ID before doing anything else
set -x GPG_ID 0x381FA1D72D72DA97

# Setup ls colors
source ~/.lscolors

# Make ls more verbose
alias ls="ls -F -v --color --show-control-chars"

# less(1) options
export LESS="-R"
export LESSCHARSET=utf-8
set -gx LESS_TERMCAP_me \e'[0m' # turn off all appearance modes (mb, md, so, us)
set -gx LESS_TERMCAP_se \e'[0m' # leave standout mode
set -gx LESS_TERMCAP_ue \e'[0m' # leave underline mode
set -gx LESS_TERMCAP_so \e'[38;5;016m'\e'[48;5;220m' # standout-mode – info
set -gx LESS_TERMCAP_mb \e'[01;31m' # enter blinking mode
set -gx LESS_TERMCAP_md \e'[01;38;5;74m' # enter double-bright mode
set -gx LESS_TERMCAP_us \e'[04;38;5;146m' # enter underline mode

set -gx LC_ALL C.UTF-8
set -gx MALLOC_CHECK_ 2
set -gx TERM screen-256color
set -gx VISUAL "vim"
set -gx WINEDEBUG fixme-all

# https://stackoverflow.com/a/5578718/35060
set -gx ALTERNATE_EDITOR ""

set PATH ~/bin /usr/local/bin /usr/local/sbin /bin /sbin /usr/bin /usr/sbin

test -f ~/.config/fish/config.fish.local && . ~/.config/fish/config.fish.local
