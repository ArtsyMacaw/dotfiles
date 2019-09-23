# ArtsyMacaw Dotfiles

## Installation
Clone repo to home directory and then use [stow](https://www.gnu.org/software/stow/) to handle the creation of sym links.

## Color Scheme
Themed for [yaru](https://github.com/ubuntu/yaru) and heavily resembles the GNOME look.

## Services
All services are handled through systemd user units, and start based off of a custom target

## Portability
As long as you are using a enviroment with wayland and systemd everything should be functional, however outside of that scripts will need major retweaking
