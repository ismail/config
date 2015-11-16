#!/usr/bin/env zsh
set -euo pipefail

curdir=$(pwd)
cd $HOME

mkdir -p .ssh
mkdir -p .gnupg

files=(
    .clang-format .gdb .gdbinit .gitconfig .gitignore .hgrc
    .irbrc .lftprc .mailcap .mutt_certificates .muttrc .screenrc 
    .tmux.conf .urlview .vimrc .Xdefaults .zshenv
    .zsh_fpath .zshfuncs .zshrc .zshrc-common
)

# ls(1) colors
dircolors $curdir/.dir_colors > ~/.lscolors

[ ! -d ~/.vim/bundle/Vundle.vim ] &&
    rm -f ~/.vim &&
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

for f in $files; do
    ln -sf $curdir/$f
done

pushd .ssh
ln -sf $curdir/.ssh/config
cp $curdir/.ssh/known_hosts .
popd

pushd .gnupg
ln -sf $curdir/.gnupg/dirmngr.conf
ln -sf $curdir/.gnupg/gpg.conf
ln -sf $curdir/.gnupg/gpg-agent.conf
popd

case $(uname -s) in
    Linux*)
        ln -sf $curdir/.iftoprc
        ln -sf $curdir/.mpv
        ln -sf $curdir/.toprc
        ln -sf $curdir/.zshrc-linux
        ln -sf $curdir/.zshfuncs-linux
        ;;
    CYGWIN_NT*)
        ln -sf $curdir/.minttyrc
        ln -sf $curdir/.mutt-gpg.rc
        ln -sf $curdir/.zshrc-windows
        sed -i s,"ControlMaster auto","ControlMaster no", ~/.ssh/config
        ;;
    Darwin*)
        ln -sf $curdir/.zshrc-mac
        ln -sf $curdir/.hushlogin
        ;;
esac
