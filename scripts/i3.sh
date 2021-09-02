# install i3 package (i3-gaps)
sudo pacman -S bluez blueman geoclue i3 network-manager-applet nitrogen \
openssh pavucontrol picom pulseaudio pulseaudio-alsa pulseaudio-bluetooth \
redshift rofi thunar ttf-font-awesome xfce4-terminal xorg xss-lock

paru -S polybar

# put configuration files
sudo cp ~/arch-linux-setup/i3/90-touchpad.conf /etc/X11/xorg.conf.d
cp ~/arch-linux-setup/i3/config ~/.config/i3
cp ~/arch-linux-setup/i3/settings.ini ~/.config/gtk-3.0
cp -r ~/arch-linux-setup/i3/rofi ~/.config
cp -r ~/arch-linux-setup/i3/i3status ~/.config
cp -r ~/arch-linux-setup/i3/redshift ~/.config
cp -r ~/arch-linux-setup/i3/polybar ~/.config