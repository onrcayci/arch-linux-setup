# Install packages from pacman
sudo pacman -S --needed archlinux-wallpaper firefox noto-fonts noto-fonts-extra papirus-icon-theme \
powerline pyenv tlp ttf-fira-code ttf-roboto zsh

# Install packages from yay
paru -S plymouth gdm-plymouth-prime visual-studio-code-bin

# setup zsh
chsh -s $(which zsh) ocayci
cp ~/arch-linux-setup/.zshrc .zshrc

# setup tlp
sudo systemctl enable tlp

# setup plymouth
sudo cp ~/arch-linux-setup/plymouth/mkinitcpio.conf /etc/mkinitcpio.conf
sudo cp ~/arch-linux-setup/plymouth/grub /etc/default/grub
sudo mkinitcpio -P
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo cp /usr/share/plymouth/arch-logo.png /usr/share/plymouth/themes/spinner/watermark.png