#!/usr/bin/env zsh

cd ~

mkdir -p .ssh
mkdir -p .gnupg

files=(
    .gdb .gdbinit .gitconfig .gitignore .hgrc
    .irbrc .lftprc .mailcap .mutt_certificates .muttrc .screenrc 
    .terminfo .tmux.conf .urlview .vim .vimrc .Xdefaults 
    .zshenv .zsh_fpath .zshfuncs .zshrc .zshrc-common
)

# ls(1) colors
dircolors config/.dir_colors > ~/.lscolors

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
        ln -sf config/.toprc
        ln -sf config/.zshrc-linux
        ln -sf config/.zshfuncs-linux
        ;;
    CYGWIN_NT*)
        ln -sf config/.minttyrc
        ln -sf config/.mutt-gpg.rc
        ln -sf config/.zshrc-windows
        sed -i s,"ControlMaster auto","ControlMaster no", ~/.ssh/config
        rm -f ~/.terminfo/73
        ln -sf ~/.terminfo/s ~/.terminfo/73
        ;;
    Darwin*)
        ln -sf config/.zshrc-mac
        ln -sf config/.hushlogin
        ;;
esac
