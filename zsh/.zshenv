# Starts firefox with wayland
export MOZ_ENABLE_WAYLAND=1

# Set gnome-keyring for electron
export DESKTOP_SESSION=gnome

# Lets gdb download debug symbols
export DEBUGINFOD_URLS=https://debuginfod.archlinux.org/

# Set electron to use wayland
export ELECTRON_OZONE_PLATFORM_HINT=wayland

# Sets theme to Adwaita Dark
export GTK_THEME=Adwaita:dark

# Sets qt theme to qt5ct
export QT_QPA_PLATFORMTHEME=qt5ct

# Sets path if distro has not already
export PATH="$HOME/.local/bin:$PATH"

# Sets gnome-keyring daemon as ssh-agent
export SSH_AUTH_SOCK=$(echo $XDG_RUNTIME_DIR)/gcr/ssh

# Sets default editor
export VISUAL=nvim
export EDITOR=nvim

# Borg Options
export BORG_PASSCOMMAND="sudo -u $USER pass services/backup"
export BORG_RSH="ssh -i $HOME/.ssh/id_rsa.backup"
export BORG_REPO='ssh://borg@ssh.artsymacaw.com:24848/backup'
