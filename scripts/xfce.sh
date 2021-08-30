# install base xfce packages
sudo pacman -S --needed gvfs network-manager-applet openssh xfce4 xfce4-goodies xfce4-pulseaudio-plugin

# install pulseaudio
sudo pacman -S --needed bluez blueman pavucontrol pulseaudio \
pulseaudio-alsa pulseaudio-bluetooth
