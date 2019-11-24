# ArtsyMacaw Dotfiles
## General
Dotfiles for sway, waybar, mako, zsh, redshift, termite, systemd, and several custom scripts with various functionality; all dependencies should simply be the application or listed in their header

## Installation
Clone repo to home directory and then use [stow](https://www.gnu.org/software/stow/) to handle the creation of sym links.

## Color Scheme
Themed for Adwaita and heavily resembles the default GNOME look.

## Services
All services are handled through systemd user units, and start based off of a custom target

## Portability
As long as you are using a enviroment with wayland and systemd everything should be functional, however outside of that scripts will need major retweaking

## HiDPI
These dotfiles are meant to be used in combination with a 4k screen, if you are not using such a screen then it is prudent that you change the various font sizes in the config
