#
# zprofile
#
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec sway
  exec libinput-gestures-setup start
fi
