# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/haden/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

echo "Welcome back, ${(C)USER}, good to see you again."

# Sets alias's
alias pacu='pacaur -Syu --devel --needed'
alias autoclean='pacaur -R $(pacaur -Qdtq)'
alias extract='tar -xvf'
alias pacr='pacaur -Rns'
alias paci='pacaur -S'
alias pac='pacaur'
alias rss='canto-curses'
alias power='sudo powertop'
alias reboot='sudo reboot'

# Sets default editor
export VISUAL=vim
export EDITOR=vim
