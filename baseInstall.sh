#!/bin/zsh
parted /dev/sda mklabel msdos
parted -a optimal /dev/sda mkpart primary 0% 100%
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt
pacstrap /mnt base base-devel
genfstab -L /mnt >> /mnt/etc/fstab
echo
echo Now run arch-chroot /mnt
