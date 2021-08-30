# install i3 package (i3-gaps)
sudo pacman -S i3 dmenu ttf-font-awesome feh

# put configuration files
sudo cp ~/arch-linux-setup/i3/90-touchpad.conf /etc/X11/xorg.conf.d
cp ~/.arch-linux-setup/i3/config ~/.config/i3