#!/bin/bash


##################################################################
#           Importing External Repositories for ISO Building     #
##################################################################

# Arcolinux:

pacman -S wget --noconfirm --needed

echo "Getting the ArcoLinux keys from the ArcoLinux repo"
wget https://github.com/arcolinux/arcolinux_repo/raw/master/x86_64/arcolinux-keyring-20230919-6-any.pkg.tar.zst -O /tmp/arcolinux-keyring-20230919-6-any.pkg.tar.zst
pacman -U --noconfirm --needed /tmp/arcolinux-keyring-20230919-6-any.pkg.tar.zst

echo "Getting the latest arcolinux mirrors file"

wget https://raw.githubusercontent.com/arcolinux/arcolinux-mirrorlist/master/etc/pacman.d/arcolinux-mirrorlist -O /etc/pacman.d/arcolinux-mirrorlist

# Chaotic AUR
echo "Fetching chaotic keys"
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB

echo "Getting the latest chaotic mirrorlist"

pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm
cp archiso/airootfs/etc/pacman.d/chaotic-mirrorlist /etc/pacman.d/chaotic-mirrorlist

