# Starts gnome-keyring
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

# Starts firefox with wayland
export MOZ_ENABLE_WAYLAND=1
export MOZ_USE_XINPUT2=1

# Scale hidpi
export GDK_DPI_SCALE=2

# Sets path if distro has not already
export PATH="$HOME/.local/bin:$PATH"

# Sets default editor
export VISUAL=nvim
export EDITOR=nvim

# Sets fzf theme
export FZF_DEFAULT_OPTS='
    --color=fg:#F7F7F7,bg:#23272A,hl:#F7F7F7,fg+:#F7F7F7,bg+:#1A5FB4,hl+:#F7F7F7,bg+:#1A5FB4    --color=info:#23272A,prompt:#F7F7F7,spinner:#2b2929,pointer:#1A5FB4,marker:#2b2929,gutter:#2b2929 --bind='tab:toggle-down,btab:toggle-up' --border --reverse'
