# Archlinux UEFI install

## Internet Connection

If no internet connection, use `iwctl` to connect to WiFi. [iwctl](https://wiki.archlinux.org/title/Iwctl)

Scan wireless devices by `iwctl device list`

Connect to a WiFi by `iwctl station <device> connect <WiFi name>`

Test internet connection by `ping -c 1 google.com`

## Update the installer system clock

Update the system clock using the command `timedatectl set-ntp true`

## Partition the disk

Use `fdisk -l` to list the available the block devices.

Use `fdisk /dev/<device>` to start modifying the partition table and the partitions of a given block device. [fdisk](https://wiki.archlinux.org/title/Fdisk)

### Setup UEFI boot partition

1. Create a new GPT partition table by `g`
2. Create a new partition by `n`
3. Set the new partition to have the flag `EFI` by `t 1`

Once done with the changes, confirm the changes by `w`

## Create filesystems

Create the boot filesystem by `mkfs.fat -F32 /dev/<partition>`

Create the root filesystem by `mkfs.ext4 /dev/<partition>`

## Mount the filesystems

Mount the root filesystem to `/mnt` by `mount /dev/<partition> /mnt`

Create the boot folder by `mkdir /mnt/boot /mnt/boot/efi`

Mount the boot filesystem by `mount /dev/<partition> /mnt/boot/efi`

## Install the base system

Install the base system and other necessary packages by `pacstrap /mnt <package name>`

My packages are `base linux linux-firmware iproute2 networkmanager vim sudo grub intel-ucode amd-ucode man-db man-pages texinfo`

## Configure the base system

Generate fstab with UUID by `genfstab -U /mnt >> /mnt/etc/fstab`

Chroot into the installed system by `arch-chroot /mnt`

Set the timezone by `ln -sf /usr/share/zoneinfo/America/Montreal /etc/localtime`

Generate `/etc/adjtime` by `hwclock --systohc` (Assumes hardware clock is set to UTC)

Update the language and localization setting by uncommenting `en_CA.UTF-8 UTF-8` and other needed locales under /etc/locale.gen`.

Run `locale-gen` to update the locale settings.

Create the file `etc/locale.conf` and add the line `LANG=en_CA.UTF-8`

Configure the hostname by writing the hostname into `/etc/hostname`

Configure the hosts by adding the followign to `/etc/hosts`:
```
127.0.0.1   localhost
::1         localhost
127.0.1.1   <hostname>
```

Set root password by `passwd`

Create a new user with sudo privileges by `useradd -mG wheel <username>`

Update the password of the user by `passwd <username>`

Update the sudoers file to give sudo privileges to the `wheel` group by `visudo` and then commenting out the line `%wheel ALL=(ALL:ALL) ALL`

Setup the bootloader by running `grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=<Bootloader name> --removable`

Generate grub config file by `grub-mkconfig -o /boot/grub/grub.cfg`

Enable the NetworkManager daemon by `systemctl enable NetworkManager`

Install the Gnome desktop environment by `pacman -S gnome`

Enable the Gnome Display Manager `gdm` by `systemctl enable gdm`

Generate user desktop directories by `su - <username>` and then running `xdg-user-dirs-update`
