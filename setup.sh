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
powerline ttf-fira-code ttf-roboto zsh

# Install packages from yay
yay -S chrome-gnome-shell gnome-shell-extension-dash-to-dock visual-studio-code-bin

# setup zsh
chsh -s $(which zsh) ocayci
cp ~/arch-linux-setup/.zshrc .zshrc
