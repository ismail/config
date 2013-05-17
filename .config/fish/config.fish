. ~/.config/fish/config.functions

set -e fish_greeting

set PATH /havana/sources/depot_tools /havana/binaries/adt-bundle/eclipse /havana/binaries/adt-bundle/sdk/platform-tools /havana/binaries/adt-bundle/sdk/tools ~/.npm/bin /sbin /usr/sbin /suse/bin $PATH

set PAGER="most"
set LC_ALL=en_US.UTF-8
set PYTHONSTARTUP=/etc/pythonstart
set PYTHONDONTWRITEBYTECODE=1

alias .. "cd .."
alias ccat "pygmentize -O bg=dark"
alias cg++ "clang++ -stdlib=libc++ -lc++ab"
alias clear 'printf "\ec"'
alias d "cd"
alias dec "gpg -d"
alias enc "gpg -ea -r"
alias gdb "gdb --quiet"
alias grep "grep --color"
alias ibs "osc -Aibs"
alias io "sudo iotop -o -P -a"
alias kvm "qemu-kvm -usb -device usb-ehci,id=ehci -vga vmware -m 4G"
alias l. "ls -d .* --color=auto"
alias less "most"
alias lsprovides "rpm -qp --provides"
alias lsrequires "rpm -qp --requires"
alias lsrpm "rpm -qlp"
alias md "mkdir -p"
alias open "xdg-open"
alias opm "osc -Apm"
alias results "osc results -v"
alias scp "rsync --compress-level=3 --partial --inplace --progress --rsh=ssh -r"
alias screen "screen -U"
alias servethis "python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'"
alias verify "gpg --verify"
alias wget "wget --content-disposition"

if [ -x /usr/bin/keychain ]
    keychain --nogui -q id_rsa
    . $HOME/.keychain/$HOSTNAME-fish
end

eval (dircolors -c ~/.dir_colors)
