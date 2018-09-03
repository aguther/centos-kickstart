#!/usr/bin/env bash

# copy iso to usb drive
dd status=progress if=${2:-./iso/CentOS_7_x86_64.iso} of=$1
