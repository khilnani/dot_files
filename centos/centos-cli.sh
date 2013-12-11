#!/usr/bin/env sh

##############################################
#
##############################################

sed -i -e 's/ONBOOT=no/ONBOOT=yes/g' /etc/sysconfig/network-scripts/ifcfg-eth0

sed -i -e 's/rhgb quiet/rhgb quiet vga=791/g' /etc/grub.conf

/etc/rc.d/init.d/network start

##############################################
#
##############################################

adduser nkhilnani
adduser nkhilnani sudo

##############################################
#
##############################################

mount /dev/cdrom /mnt
cd /mnt
./VBoxLinuxAdditions.run

##############################################
#
##############################################

echo "Type '/sbin/shutdown -r|h now' to reboot."
echo "Type 'user add NAME' to add a user."
echo "Type 'passwd NAME' to change password."

##############################################