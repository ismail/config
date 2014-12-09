#!/bin/zsh

cd ~

files=(.dir_colors .gdb .gdbinit .gitconfig .gitignore .hgrc .irbrc .screenrc .tmux.conf .vim .vimrc .zshfuncs .zshinit .zshrc .zshrc-common)

for f in $files; do
    ln -sf config/$f
done

hostname=`hostname -s`
if [ -f config/.zshrc-$hostname ]; then
    ln -sf config/.zshrc-$hostname
fi
