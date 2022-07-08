#!/bin/bash
echo "Welcome to Rahul Sandhu's Arch Linux Install Script!"
echo "Drive List:"
lsblk

read -p "Enter the drive to install to: " drivename
read -p "Do you want to have a seperate home partition: (Y or N)" 
hpartition
declare -l hpartition
hpartition=$hpartiton
echo "$hpartition"
read -p "Would you like to use systemd-boot or grub? " bootloader
read -p "Enter your timezone: " timezone
read -p "Enter your keyboard layout: " keymap
read -p "Enter your hostname: " hostname
read -p "Do you have an Intel or AMD CPU? " cpu
read -p "Do you have NVIDIA graphics? " NVIDIA

### PARITIONING THE DRIVE


