#!/usr/bin/env bash

# copy kickstart file
cp -f ./files/k8s.cfg           ./unpacked/

# copy bios configuration
cp -f ./files/bios-isolinux.cfg ./unpacked/isolinux/isolinux.cfg
cp -f ./files/bios-grub.conf    ./unpacked/isolinux/grub.conf

# copy efi configuration
cp -f ./files/efi-grub.cfg     ./unpacked/EFI/BOOT/grub.cfg
