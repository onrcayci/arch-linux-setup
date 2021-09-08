# install i3 package (i3-gaps)
sudo pacman -S bluez blueman geoclue i3 network-manager-applet nitrogen \
openssh pavucontrol picom pulseaudio pulseaudio-alsa pulseaudio-bluetooth \
redshift rofi thunar ttf-font-awesome xfce4-terminal xorg xss-lock

paru -S polybar

# put configuration files
sudo cp ~/arch-linux-setup/90-touchpad.conf /etc/X11/xorg.conf.d
cp -r ~/arch-linux-setup/.config/i3 ~/.config
cp -r ~/arch-linux-setup/.config/gtk-3.0 ~/.config
cp -r ~/arch-linux-setup/.config/rofi ~/.config
cp -r ~/arch-linux-setup/.config/i3status ~/.config
cp -r ~/arch-linux-setup/.config/redshift ~/.config
cp -r ~/arch-linux-setup/.config/polybar ~/.config