set nocompatible
filetype off

set ai
set background=dark
set bs=2
set encoding=utf-8
set esckeys
set et
set expandtab
set fileencoding=utf-8
set fileformat=unix
set fileformats=unix,dos
set history=50
set hlsearch
set incsearch
set laststatus=2
set linebreak
set modelines=0
set nobackup
set nocompatible
set nomodeline
set noswapfile
set nowrap
set nowritebackup
set number
set ruler
set showcmd
set showmatch
set showmode
set showtabline=1
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
syntax on

if has("termguicolors")
    set term=xterm-256color
    set termguicolors
endif

filetype plugin on
filetype indent on

" for vim-gnupg
let g:GPGExecutable = "gpg2"

" GUI related stuff
if has("gui_running")
    let base16colorspace=256
    colorscheme base16-atelierheath

    set guicursor+=a:blinkon0
    set guioptions-=T
    set guioptions-=m
    set lines=50 columns=120
    set mousemodel=popup

    if has("gui_gtk2") || has("gui_gtk3")
        set guifont=Consolas\ 14
        set shellcmdflag+=i
    elseif has("gui_win32")
        set guifont=Consolas:h11:cANSI:qCLEARTYPE
        set renderoptions=type:directx,geom:1,renmode:5,taamode:1
        set shell=cmd
        set shellcmdflag=/c
        map <C-K> :py3f C:/Program Files/LLVM/share/clang/clang-format.py<CR>
        imap <C-K> <ESC>:py3f C:/Program Files/LLVM/share/clang/clang-format.py<CR>i
    elseif has("gui_macvim")
        set shellcmdflag+=i
        set guifont=Menlo\ Regular:h14
    endif
endif

" Remember the positions in files with some git-specific exceptions
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$")
  \           && expand("%") !~ "COMMIT_EDITMSG"
  \           && expand("%") !~ "ADD_EDIT.patch"
  \           && expand("%") !~ "addp-hunk-edit.diff"
  \           && expand("%") !~ "git-rebase-todo" |
  \   exe "normal g`\"" |
  \ endif

" Easily switch buffers
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
