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
set paste
set guicursor+=a:blinkon0
set guifont="Droid Sans Mono":h16
colorscheme solarized
set guioptions-=m
set guioptions-=T
syntax on
set showtabline=2
set expandtab

:nmap <C-t> :tabnew<cr>
:imap <C-t> <ESC>:tabnew<cr>
:map <C-w> :tabclose<cr>

filetype plugin on
set ofu=syntaxcomplete#Complete

let g:SuperTabDefaultCompletionType = "context"
set completeopt=menu
set completeopt=menuone,menu,longest,preview

" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

