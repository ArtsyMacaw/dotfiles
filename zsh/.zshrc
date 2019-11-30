HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
setopt extendedglob
bindkey -e
zstyle :compinstall filename '/home/haden/.zshrc'

autoload -Uz compinit
compinit

# Sets alias's
alias pacu='yay -Syu'
alias pac-ac='yay -R $(yay -Qdtq)'
alias pacr='yay -Rns'
alias paci='yay -S'
alias vim='nvim'
alias grep='rg'
