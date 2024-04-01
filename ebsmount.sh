#!/bin/bash
#To Automate mounting ebs volumes
#Author: Elvis.
lsblk
sleep 5
echo -n "Enter your directory mountpoint name: "
read dirname 
sudo mkdir /mnt/$dirname
sudo mkfs -t ext4 /dev/xvdf
sudo mount /dev/xvdf /mnt/$dirname
lsblk
echo "/dev/xvdf /mnt/$dirname ext4 defaults 0 1" | sudo tee -a /etc/fstab
sleep 10
echo "Now we are unmounting the added disk"
sudo umount /dev/xvdf /mnt/$dirname
sudo rm -rf /mnt/$dirname
lsblk
sudo sed -i '/$dirname/d' /etc/fstab
cat /etc/fstab
