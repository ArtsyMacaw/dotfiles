HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
setopt extendedglob
bindkey -e
zstyle :compinstall filename '/home/haden/.zshrc'

zmodload zsh/zprof

autoload -Uz compinit
compinit

# Sets alias's
alias pac='paru -Syu'
alias paci='paru -S tofi'
alias pac-ac='paru -R $(paru -Qdtq)'
alias pacr='paru -Rns'
alias vim='nvim'
alias grep='rg'
alias ed='sudoedit'
