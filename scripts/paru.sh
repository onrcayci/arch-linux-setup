# install paru from source
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -sic

# cleanup the cloned files after the install
cd && sudo rm -r paru