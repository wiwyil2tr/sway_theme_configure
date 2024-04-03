#!/bin/bash

if ! whiptail --title "Welcome" --yesno "Welcome to Sway Theme Configure!\nPlease read README.md first. \nThis script will automatically install the packages below:\n foot mako nwg-bar sway swaylock waybar \nand copy the config files to ~/.config. Do you want to continue?" 20 60; then
    exit
fi

distro=$(whiptail --title "Select Distro" --menu "Choose your Linux distribution:" 15 60 3 \
    "Arch" "" \
    "Debian" "" \
    "Red Hat" "" 3>&1 1>&2 2>&3)
if [ $? -ne 0 ]; then
    exit
fi

case "$distro" in
    "Arch")
        sudo pacman -S foot mako nwg-bar swaylock waybar mate-terminal alacritty ccal
        ;;
    "Debian")
        sudo apt install foot mako nwg-bar swaylock waybar mate-terminal alacritty ccal
        ;;
    "Red Hat")
        sudo yum install foot mako nwg-bar swaylock waybar mate-terminal alacritty ccal
        ;;
esac

mkdir -p ${HOME}/.config
cp -r foot dconf mako nwg-bar nwg-wrapper sway swaylock waybar ${HOME}/.config
cp -r wallpapers ${HOME}/.local/share
cp -r ccala /bin
configurations=$(whiptail --title "Optional Configurations" --checklist "Do you want to install extra configurations? Choose the configurations to copy. If not, leave blank or select "Cancel":" 15 60 4 \
    "vim" "Vim configuration" OFF \
    "zsh" "Zsh configuration" OFF \
    "ranger" "Ranger configuration" OFF \
    3>&1 1>&2 2>&3)

for config in $configurations; do
    case "$config" in
        "vim")
            cp -r .vim .vimrc ${HOME}
			echo "vim configuration installed"
            ;;
        "zsh")
            cp -r .zinit .zshrc ${HOME}
			echo "zsh configuration installed"
            ;;
        "ranger")
            cp -r ranger ${HOME}/.config
			echo "ranger configuration installed"
            ;;
    esac
done
whiptail --title "Done" --msgbox "Installation and configuration completed successfully." 10 60

