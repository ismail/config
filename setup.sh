#!/bin/sh

cd ~

files = ".dir_colors .gdb .gdbinit .gitconfig .gitignore .hgrc .irbrc .screenrc .tmux.conf .vim .vimrc .zshfuncs .zshinit .zshrc .zshrc-common"

for f in files; do
    ln -s config/$f
done
