# install nvidia drivers
sudo pacman -S nvidia nvidia-prime nvidia-settings xf86-video-intel

# setup nvidia
sudo nvidia-xconfig

# copy the rules file into udev
sudo cp ~/arch-linux-setup/80-nvidia-pm.rules /etc/udev/rules.d/80-nvidia-pm.rules

# copy the configuration file
sudo cp ~/arch-linux-setup/nvidia-pm.conf /etc/modprobe.d/nvidia-pm.conf
