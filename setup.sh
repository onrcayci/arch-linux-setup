# Setup yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -sic

# Cleanup yay
cd && sudo rm -r yay

# Remove unwanted software
sudo pacman -Rs epiphany gnome-software

# Install packages from pacman
sudo pacman -S --needed firefox gnome-tweaks noto-fonts noto-fonts-extra papirus-icon-theme powerline ttf-fira-code ttf-roboto

# Install packages from yay
yay -S chrome-gnome-shell gnome-shell-extension-dash-to-dock visual-studio-code-bin
