# Setup yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -sic

# Cleanup yay
cd && sudo rm -r yay

# Remove unwanted software
sudo pacman -Rs epiphany gnome-software

# Install packages from pacman
sudo pacman -S --needed archlinux-wallpaper firefox gnome-tweaks noto-fonts noto-fonts-extra papirus-icon-theme \
powerline pyenv tlp ttf-fira-code ttf-roboto zsh

# Install packages from yay
yay -S chrome-gnome-shell gnome-shell-extension-dash-to-dock plymouth gdm-plymouth-prime visual-studio-code-bin

# setup zsh
chsh -s $(which zsh) ocayci
cp ~/arch-linux-setup/.zshrc .zshrc

# setup tlp
sudo systemctl enable tlp

# setup plymouth
sudo cp ~/arch-linux-setup/mkinitcpio.conf /etc/mkinitcpio.conf
sudo cp ~/arch-linux-setup/grub /etc/default/grub
sudo mkinitcpio -P
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo cp /usr/share/plymouth/arch-logo.png /usr/share/plymouth/themes/spinner/watermark.png