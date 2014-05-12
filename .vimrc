set number
set nocompatible
set bs=2
set ai
set viminfo='20,\"50	" read/write a .viminfo file -- limit to only 50
set history=50			" keep 50 lines of command history
set encoding=utf-8
set fileencoding=utf-8

set nowrap
set ts=4
set sw=4
set sta
set sts=4
set et
set t_Co=256

set hlsearch
set modelines=0

" Don't use Ex mode, use Q for formatting
map Q gq

set fileformat=unix
set fileformats=unix,dos

set wrap
set linebreak
set laststatus=2
set showcmd
set wildmenu
set incsearch
set background=dark
set showtabline=2
set expandtab
set title
set ruler
set nobackup
set nowritebackup
set noswapfile
colorscheme solarized
syntax on

" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * silent! lcd %:p:h

:nmap <C-t> :tabnew<cr>
:imap <C-t> <ESC>:tabnew<cr>
:highlight TrailWhitespace ctermbg=red guibg=red
:match TrailWhitespace /\s\+$\| \+\ze\t/

filetype plugin on
filetype indent on

" For python omnicomplete
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Omnicomplete changes
set wildmenu
set wildmode=list:longest

" Golang
autocmd FileType go compiler go

" GUI related stuff
if has("gui_running")

set guicursor+=a:blinkon0
set guioptions-=T
set guioptions-=m
set lines=50 columns=120
set mousemodel=popup

    if has("gui_gtk2")
        set guifont=Consolas\ 12
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
        set shell=powershell
        set shellcmdflag=-command
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    endif
endif

" sudo write
cnoremap sudow w !sudo tee % >/dev/null

" clang-format
map <C-K> :pyf /opt/clang/share/clang/clang-format.py<CR>
imap <C-K> <ESC>:pyf /opt/clang/share/clang/clang-format.py<CR>i
