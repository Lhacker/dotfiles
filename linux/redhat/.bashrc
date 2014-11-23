# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# cd_ls
function cd_ls () {
  \cd $1;
  ls;
}
alias cd=cd_ls

# custom PS1
export PS1='\n\[\033[40;1;32m\]\w \[\033[40;2;37m\]\[\033[0m\] $ '
