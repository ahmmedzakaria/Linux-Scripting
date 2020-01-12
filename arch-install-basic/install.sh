hostname=zakaria
pass=zakaria123



pacstrap /mnt base base-devel
genfstab -U -p /mnt >> /mnt/etc/fstab

#arch-chroot /mnt /bin/bash
#mv locale.gen /etc/locale.gen
arch-chroot /mnt ln -sf /usr/share/zoneinfo/Asia/Dhaka /etc/localtime
arch-chroot /mnt locale-gen

echo $hostname > /mnt/etc/hostname
arch-chroot /mnt pacman -Syu ntp networkmanager --noconfirm
arch-chroot /mnt systemctl enable NetworkManager


arch-chroot /mnt pacman -S grub efibootmgr --noconfirm
arch-chroot /mnt grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=grub
echo "Generate new grub cfg "
arch-chroot /mnt grub-mkconfig -o boot/grub/grub.cfg

echo "Adding User zakaria, ahmmed ..."
arch-chroot /mnt useradd -m -G wheel,input -s /bin/bash zakaria
arch-chroot /mnt useradd -m -G wheel,input -s /bin/bash ahmmed

echo "Seting passwords"
cat password | arch-chroot /mnt chpasswd
#echo -e "$pass\n$pass" | passwd root

arch-chroot /mnt useradd -m -G wheel,input -s /bin/bash zakaria
arch-chroot /mnt chown -R zakaria:zakaria /home/zakaria

cp sudoers /mnt/etc/
arch-chroot /mnt pacman -S pulseaudio pulseaudio-alsa xorg xorg-xinit xorg-server xfce4 lightdm lightdm-gtk-greeter
echo "exec startxfce4" > /mnt/home/zakaria/.xinitrc
arch-chroot /mnt systemctl enable lightdm
#pacman -Sy archlinux-keyring
#pacman-key --refresh-keys





