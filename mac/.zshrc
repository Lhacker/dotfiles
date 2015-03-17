autoload colors
colors

# prompt
#local p_cdir="%B%F{blue}[%~]%f%b"
local p_cdir="%{${fg[yellow]}%}%~%{${reset_color}%}"
#local p_info="[%n@%m]"
local p_info="[%n]"
PROMPT="
 $p_cdir
$p_info$ "
PROMPT2='[%n]> '

# LSColors
export LSCOLORS=gxfxcxdxbxegedabagacad

### alias ###
alias ..='cd ..'
alias ls='ls -G'
alias rm='rm -i'


# cd_ls
function cd {
  builtin cd "$@" && ls
}

# open
alias chrome="open -a Google\ Chrome"
alias firefox="open -a FireFox"
alias prev="open -a Preview"
### /alias ###

# tab settings
autoload -U compinit
compinit
zstyle ':completion:*:default' menu select=1

#bind key
#bindkey -v
#bindkey -e
#bindkey '\[[1;9C': forward-word
#bindkey '\[[1;9D': backward-word

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# Node.js(nvm)
source ~/.nvm/nvm.sh
nvm use "v0.11.14"

# golang
export GOPATH=$HOME/_go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

