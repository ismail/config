#!/usr/bin/env zsh

cd ~

mkdir -p .ssh
mkdir -p .gnupg

files=(
    .dir_colors .gdb .gdbinit .gitconfig .gitignore .hgrc
    .irbrc .mailcap .mutt_certificates .muttrc .screenrc 
    .terminfo .tmux.conf .urlview .vim .vimrc .Xdefaults 
    .zshenv .zsh_fpath .zshfuncs .zshrc .zshrc-common
)

for f in $files; do
    ln -sf config/$f
done

pushd .ssh
ln -sf ../config/.ssh/config
cp ../config/.ssh/known_hosts .
popd

pushd .gnupg
ln -sf ../config/.gnupg/dirmngr.conf
ln -sf ../config/.gnupg/gpg.conf
ln -sf ../config/.gnupg/gpg-agent.conf
popd

case $(uname -s) in
    Linux*)
        ln -sf config/.iftoprc
        ln -sf config/.mpv
        ln -sf config/.zshrc-linux
        ln -sf config/.zshfuncs-linux
        ;;
    CYGWIN_NT*)
        ln -sf config/.minttyrc
        ln -sf config/.mutt-gpg.rc
        ln -sf config/.zshrc-windows
        ln -sf config/.zshfuncs-windows
        rm -f ~/.terminfo/73
        ln -sf ~/.terminfo/s ~/.terminfo/73
        ;;
    Darwin*)
        ln -sf config/.zshrc-mac
        ln -sf config/.hushlogin
        ;;
esac
