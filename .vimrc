set number
set nocompatible
set bs=2
set ai
set viminfo='20,\"50	" read/write a .viminfo file -- limit to only 50
set history=50			" keep 50 lines of command history

set nowrap
set ts=4
set sw=4
set sta
set sts=4
set et

set hlsearch

set modelines=0

" Don't use Ex mode, use Q for formatting
map Q gq

set wrap
set linebreak
set laststatus=2
set showcmd
set wildmenu
set incsearch
set background=dark
set guicursor+=a:blinkon0
if has("gui_macvim")
    set guifont=Menlo\ Regular:h14
else
    set guifont="Droid Sans Mono":h16
endif
colorscheme solarized
set guioptions-=m
set guioptions-=T
syntax on
set showtabline=2
set expandtab

:nmap <C-t> :tabnew<cr>
:imap <C-t> <ESC>:tabnew<cr>
:map <C-w> :tabclose<cr>
:highlight TrailWhitespace ctermbg=red guibg=red
:match TrailWhitespace /\s\+$\| \+\ze\t/

filetype plugin on

let g:clang_use_library=1

