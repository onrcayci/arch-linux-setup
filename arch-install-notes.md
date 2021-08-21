# Arch Linux Manual Installation Notes

1. Internet connection

If no internet connection, use `iwctl` to connect to WiFi. [Link](https://wiki.archlinux.org/title/Iwctl)

Scan wireless devices by `iwctl device list`

Then, connect that device to a WiFi by `iwctl station <device> connect <WiFi Name>`

2. Update the system clock

Update the system clock using the command `timedatectl set-ntp true`

3. Partition the disks

Use `fdisk -l` to display the available block devices (hard disks).

Use `fdisk /dev/<device>` to start modifying the partition table. [Link](https://wiki.archlinux.org/title/Fdisk)

Check device partition table details using `p`

Create new partition table by using `o` (for MSDOS) or `g` (for GPT)

Create new partition using `n`

Write changes using `w`

4. [Format the partitions](https://wiki.archlinux.org/title/File_systems#Create_a_file_system)

Create a new exFAT filesystem for boot using `mkfs.fat -F 32 <partition>`

Create root filesystem using `mkfs.ext4 <partition>`

5. Mount the filesystem

Mount the root filesystem to `/mnt`

Mount the boot filesystem to `/mnt/boot` after creating the folder using `mkdir /mnt/boot`

6. Install the base system

`pacstrap /mnt base linux linux-firmware`

`pacstrap /mnt iproute2 networkmanager`

`pacstrap /mnt nano vi sudo man-db man-pages texinfo`

7. Configure the system

    1. Generate fstab by `genfstab -U /mnt >> /mnt/etc/fstab`
    2. Chroot into the installed system by `arch-chroot /mnt`
    3. Set the timezone by `ln -sf /usr/share/zoneinfo/America/Montreal /etc/localtime`
    4. Generate `/etc/adjtime` by `hwclock --systohc` (Assumes hardware clock is set to UTC)
    5. Localization by uncommenting `en_CA.UTF-8 UTF-8` and other needed locales under /etc/locale.gen. Then run `locale-gen`
    6. Create `/etc/locale.conf` and write `LANG=en_CA.UTF-8`
    7. Network configuration by creating `/etc/hostname` and writing hostname `archlinux`
    8. Edit `/etc/hosts` and write the following:
        ```
        127.0.0.1   localhost
        ::1         localhost
        127.0.1.1   archlinux
        ```
    9. Might need to create a new `initramfs` by `mkinitcpio -p`
    10. Set root password by `passwd`

8. [Bootloader setup](https://wiki.archlinux.org/title/GRUB)

Install `grub` inside the chrooted system by `pacman -S grub`

Install necessary microcode for the processors `pacman -S intel-ucode OR amd-ucode`

Install grub using the command `grub-install --target=<processor architecture> /dev/sda`

Generate grub config by `grub-mkconfig -o /boot/grub/grub.cfg`

9. Setup after reboot

    1. create user with sudo privileges `useradd -m -G wheel <username>`
    2. change password of the user `passwd <username>`
    3. `visudo` and give group `wheel` sudo privileges
    4. install Xorg display server by `pacman -S xorg` [Link](https://wiki.archlinux.org/title/Xorg)
    5. install desktop environment (e.g. budgie by `pacman -S gnome`)
    6. enable display manager (e.g. for gdm `systemctl enable gdm`)
    7. generate desktop dirs for the user `xdg-user-dirs-update`
