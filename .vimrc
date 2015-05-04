set ai
set background=dark
set bs=2
set encoding=utf-8
set et
set expandtab
set fileencoding=utf-8
set fileformats=unix,dos
set fileformat=unix
set history=50                  " keep 50 lines of command history
set hlsearch
set incsearch
set laststatus=2
set linebreak
set modelines=0
set nobackup
set nocompatible
set noswapfile
set nowrap
set nowritebackup
set number
set ruler
set showcmd
set showtabline=0
set sta
set sts=4
set sw=4
set t_Co=256
set title
set ts=4
set viminfo='10,\"100,:20,%,n~/.viminfo
set wildmenu
set wrap

map Q gq
colorscheme solarized
syntax on

:nmap <C-t> :tabnew<cr>
:imap <C-t> <ESC>:tabnew<cr>

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

" Easier copy paste
vnoremap <C-c> "+y

" GUI related stuff
if has("gui_running")

set guicursor+=a:blinkon0
set guioptions-=T
set guioptions-=m
set lines=50 columns=120
set mousemodel=popup
    if has("gui_gtk2")
        set guifont=Consolas\ 13
        set shellcmdflag+=i
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI
        set renderoptions=type:directx
        set shell=cmd
        set shellcmdflag=/c
    elseif has("gui_macvim")
        set shellcmdflag+=i
        set guifont=Menlo\ Regular:h14
    endif
endif

" sudo write
cnoremap sudow w !sudo tee % >/dev/null

" clang-format
let g:clang_format_path = "/opt/clang/bin/clang-format"
map <C-K> :pyf /opt/clang/share/clang/clang-format.py<CR>
imap <C-K> <ESC>:pyf /opt/clang/share/clang/clang-format.py<CR>i
