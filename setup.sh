#!/usr/bin/env zsh
set -euo pipefail

srcdir=$(pwd)
cd $HOME

mkdir -p .ssh
mkdir -p .gnupg

files=(
    .base16-atelier-heath.sh .clang-format .emacs .gdbinit .gitconfig
    .gitignore .hgrc .irbrc .lftprc .mailcap .mutt_certificates
    .muttrc .screenrc .tmux.conf .urlview .vimrc .wgetrc .Xdefaults
    .zshrc
)

# ls(1) colors
TERM=xterm-256color dircolors $srcdir/.dir_colors > ~/.lscolors

for f in $files; do
    ln -sf $srcdir/$f
done

pushd .gnupg
ln -sf $srcdir/.gnupg/gpg.conf
ln -sf $srcdir/.gnupg/gpg-agent.conf
popd

ln -sf $srcdir/.iftoprc
ln -sf $srcdir/.mpv
ln -sf $srcdir/.pam_environment
ln -sf $srcdir/.toprc
        
# Blacklist Segoe Emoji fonts
mkdir -p ~/.config/fontconfig/conf.d
ln -sf $srcdir/00-aliases.conf ~/.config/fontconfig/conf.d
