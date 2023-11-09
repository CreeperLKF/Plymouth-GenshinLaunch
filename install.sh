#!/bin/bash

# Test for root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Copy the theme to /usr/share/plymouth/themes/
if [ -d "/usr/share/plymouth/themes/GenshinLaunch" ]; then
    echo "Removing old theme..."
    rm -r /usr/share/plymouth/themes/GenshinLaunch
fi

cp -r GenshinLaunch /usr/share/plymouth/themes/GenshinLaunch

# You have to increase the number if you have installed other themes
update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/GenshinLaunch/GenshinLaunch.plymouth 200

update-initramfs -u

# Prompt for theme selection (May not be available in Ubuntu)
# echo 'Please run "sudo plymouth-set-default-theme GenshinLaunch" to set the theme.'