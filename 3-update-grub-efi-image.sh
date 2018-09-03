#!/usr/bin/env bash

# create directories
mkdir -p ./efi

# mount iso image
mount ./unpacked/images/efiboot.img ./efi/

# copy iso image content
cp -f ./unpacked/EFI/BOOT/grub.cfg ./efi/EFI/BOOT/grub.cfg

# unmount
umount ./efi/

# delete directory
rm -rf ./efi/
