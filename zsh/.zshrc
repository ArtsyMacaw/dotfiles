HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
setopt extendedglob
bindkey -v
zstyle :compinstall filename '/home/haden/.zshrc'

autoload -Uz compinit
compinit

# Sets alias's
alias pacu='yay -Syu'
alias pac-ac='yay -R $(yay -Qdtq)'
alias pacr='yay -Rns'
alias paci='yay -S'
alias vim='nvim'
alias rg='grep'

# Updates editor information when the keymap changes.
function zle-keymap-select() {
  zle reset-prompt
  zle -R
}

zle -N zle-keymap-select

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/[% NORMAL]%}/(main|viins)/[% INSERT]%}"
}

# define right prompt, regardless of whether the theme defined it
RPS1='$(vi_mode_prompt_info)'
RPS2=$RPS1
