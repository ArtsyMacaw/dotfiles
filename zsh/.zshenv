# Starts gnome-keyring
if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

# Starts firefox with wayland
export MOZ_ENABLE_WAYLAND=1

export PATH=/home/haden/.config/bin:$PATH
