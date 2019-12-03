#!/usr/bin/env zsh
set -euo pipefail

srcdir=$(pwd)
cd $HOME

mkdir -p .ssh
mkdir -p .gnupg

files=(
    .base16-atelier-heath.sh .clang-format .gdbinit .gitconfig
    .gitignore .hgrc .irbrc .lftprc .mailcap .mutt_certificates
    .muttrc .screenrc .tmux.conf .urlview .vimrc .wgetrc .Xdefaults
    .zshrc
)

# ls(1) colors
TERM=xterm-256color dircolors $srcdir/.dir_colors > ~/.lscolors

for f in $files; do
    ln -sf $srcdir/$f
done

pushd .ssh
ln -sf $srcdir/.ssh/config
[ ! -f known_hosts ] && cp $srcdir/.ssh/known_hosts .
popd

pushd .gnupg
ln -sf $srcdir/.gnupg/gpg.conf
ln -sf $srcdir/.gnupg/gpg-agent.conf
popd

ln -sf $srcdir/.iftoprc
ln -sf $srcdir/.mpv
ln -sf $srcdir/.pam_environment
ln -sf $srcdir/.toprc
ln -sf $srcdir/.zshrc-linux
        
mkdir -p ~/.config/emacs
pushd ~/.config/emacs
cp $srcdir/.emacs init
popd
