alias ls="ls -G"

# cd_ls
function cd() {
  builtin cd "$@" && ls
}

# custom PS1
#export PS1='\n\[\033[40;1;32m\]\w \[\033[40;2;37m\]\[\033[0m\] $ '
export PS1='\n\w\n $ '
