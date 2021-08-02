# Setup yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay && sudo makepkg -sic

# Install packages from pacman
sudo pacman -S firefox flatpak gnome-software-packagekit-plugin noto-fonts noto-fonts-extra powerline ttf-fira-code ttf-roboto zsh

# Install packages from yay
yay -S chrome-gnome-shell visual-studio-code-bin