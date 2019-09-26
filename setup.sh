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
    .zshenv .zshfuncs .zshrc .zshrc-common
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

case $(uname -s) in
    Linux*)
        ln -sf $srcdir/.iftoprc
        ln -sf $srcdir/.mpv
        ln -sf $srcdir/.pam_environment
        ln -sf $srcdir/.toprc
        ln -sf $srcdir/.zshrc-linux
        ln -sf $srcdir/.zshfuncs-linux
        ln -sf $srcdir/.zshrc-$(hostname)

        if [[ ! -d /usr/lib/locale/C.utf8 && ! -d /usr/lib/locale/C.UTF-8 ]]; then
            echo "C.UTF-8 locale doesn't exist, will revert to en_US.UTF-8"
            echo "export LC_ALL=en_US.UTF-8" >> ~/.zshrc-local
        fi

        mkdir -p ~/.config/emacs
        pushd ~/.config/emacs
        cp $srcdir/.emacs init
        popd

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
