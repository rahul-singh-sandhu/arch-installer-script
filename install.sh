#!/bin/bash
echo "Welcome to Rahul Sandhu's Arch Linux Install Script!"

echo "Drive List:"

drivelist=$(lsblk)

echo $drivelist

read -p "Enter the drive to install to: " drivename
read -p "Do you want to have a seperate home partition: " hpartition
read -p "Would you like to use systemd-boot or grub? " bootloader
read -p "Enter your timezone: " timezone
read -p "Enter your keyboard layout: " keymap
read -p "Enter your hostname: " hostname
read -p "Do you have an Intel or AMD CPU? " cpu
read -p "Do you have NVIDIA graphics? " NVIDIA

### PARITIONING THE DRIVE
fdisk $drivename << FDISK_CMDS
g
n
1

+500M
w
q
