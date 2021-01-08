#! /bin/bash

#reference:https://www.yuque.com/sunhl/mvumc2/rq64vb

cat >> /etc/pacman.conf << EOF
[archlinuxcn]
SigLevel=Never
Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch
EOF

#feh --randomize --bg-fill ~/Pictures/DesktopBackground

# xorg et.
pacman -S xorg-server xorg-xinit firefox  git 

# fonts 
pacman -S wqy-microhei ttf-font-awesome ttf-liberation wqy-zenhei noto-fonts noto-fonts-cjk noto-fonts-emoji
yay -S siji-git -y

# 系统调节(pactl/音量调节,alsa-utils/音量调节)
yay -S alsa-utils light pactl NetworkManager

# i3 and some useful softwares
pacman -S i3-gaps polybar alacritty picom feh rofi nautilus volumeicon xflux  ranger

# 输入法 #fcitx-googlepinyin
pacman -S fcitx-im fcitx-configtool fcitx-sougoupinyin 

# 磁盘 (smartctl --all <you-devices>)
pacman -S smartmontools
 
cat >> ~/.bashrc << EOF
export LANG=zh_CN.UTF-8
export LC_ALL=zh_CN.UTF-8
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XMODIFIERS="@im=fcitx"
EOF

# my person config
git clone https://github.com/moloach/i3config ~/.config
