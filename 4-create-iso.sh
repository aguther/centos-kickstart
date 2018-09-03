#!/usr/bin/env bash

# generate iso
/usr/bin/genisoimage -untranslated-filenames -volid "${1:-CentOS 7 x86_64}" -J -joliet-long -rational-rock -translation-table -input-charset utf-8 -x ./lost+found -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -eltorito-alt-boot -e images/efiboot.img -no-emul-boot -o ./iso/${2:-CentOS_7_x86_64.iso} -T ./unpacked/
/usr/bin/isohybrid -u ./iso/${2:-CentOS_7_x86_64.iso}
