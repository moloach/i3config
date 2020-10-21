#! /bin/bash

#reference:https://www.yuque.com/sunhl/mvumc2/rq64vb

# fonts 
pacman -S wqy-microhei ttf-font-awesome ttf-liberation
yay -S siji-git

# i3 and some useful softwares
pacman -S i3-gaps polybar alacritty picom feh rofi nautilus  volumeicon xflux xorg-xinit git -y

# 输入法
pacman -S fcitx-im fcitx-configtool

pacman -S fcitx


# 系统调节
yay -S alsa-utils light

cat >> ~/.bashrc << EOF
export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XMODIFIERS="@im=fcitx"
EOF

# my person config
git clone https://github.com/moloach/i3config ~/.config