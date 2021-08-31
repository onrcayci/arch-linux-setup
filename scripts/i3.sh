# install i3 package (i3-gaps)
sudo pacman -S bluez blueman dmenu feh i3 network-manager-applet \
openssh pavucontrol pulseaudio pulseaudio-alsa pulseaudio-bluetooth ttf-font-awesome \
xbacklight xfce4-panel xfce4-pulseaudio-plugin


# put configuration files
sudo cp ~/arch-linux-setup/i3/90-touchpad.conf /etc/X11/xorg.conf.d
cp ~/.arch-linux-setup/i3/config ~/.config/i3