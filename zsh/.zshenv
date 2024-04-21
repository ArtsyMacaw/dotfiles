# Starts firefox with wayland
export MOZ_ENABLE_WAYLAND=1

# Set gnome-keyring for electron
export DESKTOP_SESSION=gnome

# Lets gdb download debug symbols
export DEBUGINFOD_URLS=https://debuginfod.archlinux.org/

# Set hardware acceleration for AMD
export LIBVA_DRIVER_NAME=radeonsi

# Allow communication with flatpak
export GOLDWARDEN_SOCKET_PATH=~/.var/app/com.quexten.Goldwarden/data/goldwarden.sock

# Set electron to use wayland
export ELECTRON_OZONE_PLATFORM_HINT=wayland

# Sets theme to Adwaita Dark
export GTK_THEME=Adwaita:dark

# Sets qt theme to use kvantum theme engine
export QT_QPA_PLATFORMTHEME=qt6ct

# Sets path if distro has not already
export PATH="$HOME/.local/bin:$PATH"

# Sets gnome-keyring daemon as ssh-agent
export SSH_AUTH_SOCK=$(echo $XDG_RUNTIME_DIR)/gcr/ssh

# Sets default editor
export VISUAL=nvim
export EDITOR=nvim
