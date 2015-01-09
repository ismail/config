#!/bin/zsh

cd ~

mkdir -p .ssh
mkdir -p .gnupg

files=(
    .dir_colors .gdb .gdbinit .gitconfig .gitignore .hgrc
    .irbrc .mailcap .mutt .muttrc .screenrc .terminfo
    .tmux.conf .urlview .vim .vimrc .Xdefaults .zshenv
    .zsh_fpath .zshfuncs .zshrc .zshrc-common
)

for f in $files; do
    ln -sf config/$f
done

pushd .ssh
ln -sf ../config/.ssh/config
cp ../config/.ssh/known_hosts .
popd

pushd .gnupg
ln -sf ../config/.gnupg/gpg.conf
ln -sf ../config/.gnupg/gpg-agent.conf
popd

case $(uname -s) in
    Linux*)
        ln -sf config/.zshrc-linux
        ;;
    CYGWIN_NT*)
        ln -sf config/.minttyrc
        ln -sf config/.zshrc-windows
        ln -sf ~/.terminfo/s ~/.terminfo/73
        ;;
    Darwin*)
        ln -sf config/.zshrc-mac
        ;;
esac
