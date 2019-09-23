HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
setopt extendedglob
bindkey -e
zstyle :compinstall filename '/home/haden/.zshrc'

autoload -Uz compinit
compinit

# Greeting on shell launch
echo "Welcome back, ${(C)USER}, good to see you again."

# Sets alias's
alias pacu='yay -Syu'
alias pac-autoclean='yay -R $(yay -Qdtq)'
alias pacr='yay -Rns'
alias paci='yay -S'
alias vim='nvim'
alias rg='grep'
