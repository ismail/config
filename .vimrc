set number
set nocompatible
set bs=2
set ai
set viminfo='20,\"50	" read/write a .viminfo file -- limit to only 50
set history=50			" keep 50 lines of command history
set encoding=utf-8
set fileencoding=utf-8
set lines=50 columns=120

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
set showtabline=2
set expandtab
syntax on

:nmap <C-t> :tabnew<cr>
:imap <C-t> <ESC>:tabnew<cr>
:map <C-w> :tabclose<cr>
:highlight TrailWhitespace ctermbg=red guibg=red
:match TrailWhitespace /\s\+$\| \+\ze\t/

filetype plugin on

" clang_complete
let g:clang_use_library=1
let g:clang_snippets=1

" GUI related stuff
if has("gui_running")

set guicursor+=a:blinkon0
colorscheme solarized
set guioptions-=m
set guioptions-=T

    if has("gui_gtk2")
        set guifont="Droid Sans Mono":h16
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    endif
endif

