# Update the installer system clock
timedatectl set-ntp true

# partition the disk
(
    echo g
    echo n
    echo 
    echo 
    echo +300M
    echo t
    echo 1
    echo n
    echo
    echo
    echo
    echo w
) | sudo fdisk /dev/sda