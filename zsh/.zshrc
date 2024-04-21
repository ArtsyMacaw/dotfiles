#Power10k Controlled
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History settings
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt autocd
setopt extendedglob
setopt HIST_IGNORE_SPACE
bindkey -e

# Sets alias's
alias pac='paru -Syu'
alias paci='paru -S'
alias pacc='paru -R $(paru -Qdtq)'
alias pacr='paru -Rns'
alias vim='nvim'
alias grep='rg'
alias ed='sudoedit'

# Zinit controlled
source /usr/share/zinit/zinit.zsh
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Dont include 'zinit ice wait'
# p10 instant prompt handles itself
zinit ice depth"1"
zinit light romkatv/powerlevel10k

# Loads plugins async
zinit wait lucid light-mode for \
    atinit'zle -N history-substring-search-up; zle -N history-substring-search-down' \
        zsh-users/zsh-history-substring-search \
    atinit"zicompinit; zicdreplay" \
        zdharma-continuum/fast-syntax-highlighting \
    atload"_zsh_autosuggest_start" \
        zsh-users/zsh-autosuggestions \
    blockf atpull'zinit creinstall -q .' \
        zsh-users/zsh-completions \

# Binds arrow keys
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Power10k controlled
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
