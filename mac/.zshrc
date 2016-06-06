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
alias cddownload='cd ~/Downloads'
alias cddesktop='cd ~/Desktop'

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
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# plenv
if which plenv > /dev/null; then eval "$(plenv init -)"; fi

# cpanm
# ```
# $ curl -LO http://xrl.us/cpanm
# $ chmod +x cpanm
# ```
export PATH="$HOME/cpanm:$PATH"


# Node.js(nvm)
source ~/.nvm/nvm.sh
nvm use "v5.0.0"


# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/shiryu/.gvm/bin/gvm-init.sh" ]] && source "/Users/shiryu/.gvm/bin/gvm-init.sh"
