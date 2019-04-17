# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# executing past commands 
alias 0='./a.out '
alias g='g++ -std=c++11 '
alias ls='ls -1 | grep --color . '
alias reloadbashrc='. ~/.bashrc'
export GREP_COLOR="1;36"

# testing functions on multiple files
function t () {
    rm a.out;
    g++ -std=c++11 $1;
    shift 1;
    for val in $@
    do
        echo "----------------------------------------------------------------------";
        echo "$val";
        ./a.out < $val;
    done
}

function howtworunasm(){
  rm it.out;
  nasm -f elf32 "$1.asm";
  ld -m elf_i386 "$1.o" -o it.out;
  ./it.out
}

# function makevimrc(){
#   rm .vimrc;
# 
# }

