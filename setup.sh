#!/bin/zsh

cd ~

mkdir -p .ssh
mkdir -p .gnupg

files=(
    .dir_colors .gdb .gdbinit .gitconfig .gitignore .hgrc
    .irbrc .mailcap .mutt .muttrc .screenrc .terminfo
    .tmux.conf .urlview .vim .vimrc .Xdefaults .zshfuncs
    .zshrc .zshrc-common
)

for f in $files; do
    ln -sf config/$f
done

pushd .ssh
ln -sf ../config/.ssh/config
popd

pushd .gnupg
ln -sf ../config/.gnupg/gpg.conf
ln -sf ../config/.gnupg/gpg-agent.conf
popd

hostname=`hostname -s`
if [ -f config/.zshrc-$hostname ]; then
    ln -sf config/.zshrc-$hostname
fi

if [ `uname -o` = "Cygwin" ]; then
    ln -sf config/.minttyrc
fi
