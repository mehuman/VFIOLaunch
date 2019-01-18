#!/bin/bash
VMNAME="Name of Domain"
DEVICEDIR="~/home/USER/.vfio" #Not currently working
INPUTADDRESS="0x60"
INPUTVALUE="17"
VMDISPLAY="/dev/i2c-5"

#Launch VM
virsh -c qemu:///system start $VMNAME

#Attach USB devices
for usb in /home/USER/.vfio/*; do #Edit here
  echo $VMNAME $usb
  virsh -c qemu:///system attach-device $VMNAME $usb
done

#Switch Input
sudo ddccontrol -r $INPUTADDRESS -w $INPUTVALUE dev:$VMDISPLAY
