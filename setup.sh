#!/usr/bin/env zsh
set -euo pipefail

srcdir=$(pwd)
cd $HOME

mkdir -p .ssh
mkdir -p .gnupg

files=(
    .base16-atelier-heath.sh .clang-format .gdb .gdbinit .gitconfig
    .gitignore .hgrc .irbrc .lftprc .mailcap .mutt_certificates
    .muttrc .screenrc .tmux.conf .urlview .vimrc .wgetrc .Xdefaults
    .zshenv .zshfuncs .zshrc .zshrc-common
)

# ls(1) colors
dircolors $srcdir/.dir_colors > ~/.lscolors

for f in $files; do
    ln -sf $srcdir/$f
done

pushd .ssh
ln -sf $srcdir/.ssh/config
[ ! -f known_hosts ] && cp $srcdir/.ssh/known_hosts .
popd

pushd .gnupg
ln -sf $srcdir/.gnupg/dirmngr.conf
ln -sf $srcdir/.gnupg/gpg.conf
ln -sf $srcdir/.gnupg/gpg-agent.conf
popd

case $(uname -s) in
    Linux*)
        ln -sf $srcdir/.gtkrc-2.0
        ln -sf $srcdir/.iftoprc
        ln -sf $srcdir/.mpv
        ln -sf $srcdir/.pam_environment
        ln -sf $srcdir/.toprc
        ln -sf $srcdir/.zshrc-linux
        ln -sf $srcdir/.zshfuncs-linux
        ;;
    CYGWIN_NT*)
        ln -sf $srcdir/.minttyrc
        ln -sf $srcdir/.mutt-gpg.rc
        ln -sf $srcdir/.zshrc-windows
        sed -i s,"ControlMaster auto","ControlMaster no", ~/.ssh/config
        ;;
    Darwin*)
        ln -sf $srcdir/.zshrc-mac
        ln -sf $srcdir/.hushlogin
        ;;
esac
