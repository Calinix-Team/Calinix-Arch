pacman -S --noconfirm --needed archlinux-keyring
pacman -S --needed --noconfirm archiso mkinitcpio-archiso


mkarchiso -v -w ./work -o ./out ./archiso/

echo "ISO Built in ./out folder!"