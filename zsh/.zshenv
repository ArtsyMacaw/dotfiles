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
