# Starts gnome-keyring
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

# Starts firefox with wayland
export MOZ_ENABLE_WAYLAND=1

# Sets path if distro has not already
export PATH="$HOME/.local/bin:$PATH"

# Sets default editor
export VISUAL=nvim
export EDITOR=nvim

# Sets fzf theme
export FZF_DEFAULT_OPTS='
    --color=fg:#F7F7F7,bg:#2b2929,hl:#F7F7F7,fg+:#F7F7F7,bg+:235,hl+:#F7F7F7,bg+:#e95420    --color=info:#2b2929,prompt:#F7F7F7,spinner:#2b2929,pointer:#e95420,marker:#2b2929,gutter:#2b2929 --bind='tab:toggle-down,btab:toggle-up' --border --reverse'

# Sets mode timeout
export KEYTIMEOUT=1
