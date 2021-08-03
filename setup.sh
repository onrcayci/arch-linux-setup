# Setup yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -sic

# Cleanup yay
cd && sudo rm -r yay

# Install packages from pacman
sudo pacman -S firefox flatpak gnome-software-packagekit-plugin noto-fonts noto-fonts-extra papirus-icon-theme powerline ttf-fira-code ttf-roboto zsh

# Install packages from yay
yay -S chrome-gnome-shell gdm-plymouth gnome-shell-extension-dash-to-dock matcha-gtk-theme pamac plymouth visual-studio-code-bin

# Setup plymouth
sudo cp arch-linux-setup/mkinitcpio.conf /etc/mkinitcpio.conf
sudo mkinitcpio -p linux
sudo cp arch-linux-setup/grub /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

# Change shell to zsh
chsh -s $(which zsh) ocayci
cp arch-linux-setup/.zshrc .zshrc
echo "Logout and Login again to see the changes take effect."
