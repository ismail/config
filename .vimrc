" Default configuration file for Vim
" Written by Aron Griffis <agriffis@gentoo.org>
" Modified by Ryan Phillips <rphillips@gentoo.org>
" Added Redhat's vimrc info by Seemant Kulleen <seemant@gentoo.org>
" Added some enhancements by A. Murat Eren <meren@uludag.org.tr>
" Tidy up by Onur Küçük <onur@pardus.org.tr>

" The following are some sensible defaults for Vim for most users.
" We attempt to change as little as possible from Vim's defaults,
" deviating only where it makes sense
set number
set nocompatible		" Use Vim defaults (much better!)
set bs=2				" Allow backspacing over everything in insert mode
set ai					" Always set auto-indenting on
"set backup				" Keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file -- limit to only 50
set history=50			" keep 50 lines of command history
set ruler				" Show the cursor position all the time

" Vi is cooler with these settings :)
set nowrap
set ts=4
set sw=4
set sta
set sts=4
set et

" Always enable syntax & last search highlighting 
set hlsearch

set modelines=0

" Don't use Ex mode, use Q for formatting
map Q gq

if &term=="xterm"
     set t_RV=			" don't check terminal version
     set t_Co=8
     set t_Sb=^[4%dm
     set t_Sf=^[3%dm
endif

set wrap
set linebreak
set laststatus=2
set showcmd
set wildmenu
set incsearch
set background=dark
set paste
set guicursor+=a:blinkon0
set gfn=Droid\ Sans\ Mono\ 8
colorscheme slate
set guioptions-=m
set guioptions-=T
syntax on
