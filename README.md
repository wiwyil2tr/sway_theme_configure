# sway_theme_configure
## Sway Beautification Tutorial
![20240316_15h29m07s_grim](https://github.com/wiwyil2tr/sway_theme_configure/assets/108447154/a039cfc0-faa1-486e-8fac-9c806da22690)

### Introduction

Sway is a Wayland Compositor (similar to a window manager in Xorg), it is an alternative to i3wm on Wayland, with a similar way of operation as i3wm. The configuration file is interchangeable. Swayfx is a modified version of sway that includes some window effects. With Wayland gradually replacing Xorg, this script can help users migrate quickly. This script can configure sway to the style shown in Screenshots with one click, and you can choose whether to also configure vim, ranger, or zsh at the same time.

* This script also comes with some wallpapers.

* Dependencies:
  
  ```
  swayfx (needs to be installed separately) mate-terminal alacritty ccal foot mako nwg-bar sway swaylock waybar copyq ranger (optional), vim (optional), zsh (optional)
  ```

### Notes

* This script requires swayfx to be installed separately to work.
* The location in the weather plugin in Waybar needs to be changed manually; the default value is Harbin.
* This script will not change the default shell. If you choose to install the zsh configuration file and you are not currently using zsh, you need to manually change the default shell using the chsh command.
* Optional configuration files (zsh, vim, ranger) require installing the corresponding software packages in advance.

### Installation

Run:

```bash
./install.sh
```
