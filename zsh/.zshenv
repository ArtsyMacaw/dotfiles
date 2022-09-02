# Starts firefox with wayland
export MOZ_ENABLE_WAYLAND=1

# Allows system tray support
export XDG_CURRENT_DESKTOP=Unity

# Sets correct VAAPI driver
export LIBVA_DRIVER_NAME=iHD

# Sets path if distro has not already
export PATH="$HOME/.local/bin:$PATH"

# Sets gnome-keyring daemon as ssh-agent
export SSH_AUTH_SOCK=/run/user/$(id -u)/keyring/ssh

# Sets default editor
export VISUAL=nvim
export EDITOR=nvim

# Borg Options
export BORG_PASSCOMMAND="sudo -u $USER pass services/backup"
export BORG_RSH="ssh -i $HOME/.ssh/id_rsa.backup"
export BORG_REPO='ssh://borg@ssh.artsymacaw.com:24848/backup'
