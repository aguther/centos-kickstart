#!/usr/bin/env bash

# ensure dependencies are installed
yum install -y rsync genisoimage syslinux

# create directories
mkdir -p ./{origin,unpacked,iso}

# mount iso image
mount -o loop ${1:-CentOS-7-*.iso} ./origin/

# copy iso image content
rsync -avz ./origin/ ./unpacked

# unmount
umount ./origin/

# delete directory
rm -rf ./origin/
