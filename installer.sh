#!/bin/bash

#git clone http://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git
#cd linux-firmware
#echo "installing Bluetooth Drivers"
#cp linux-firmware/intel/ibt-19-0-4.ddc linux-firmware/intel/ibt-19-0-4.sfi /lib/firmware/intel/
#echo "Installing LAN Drivers"
#cp -r rtl_nic /lib/firmware/
#echo "installing WIFI Drivers"
#cp iwlwifi-QuZ-a0-hr-b0-* /lib/firmware/
#echo "Installing Nvidia" 
#cp -r linux-firmware/nvidia/tu117 /lib/firmware/nvidia/
#echo "Enabling Wifi"
#modprobe -r iwlwifi ; modprobe iwlwifi
#apt install rfkill -y
#rfkill unblock all
wifiint=wlp0s20f3        #wifi interface name
ifconfig $wifiint up
###################################
#echo "Connecting To Ap"\n"Loading Networks.."
#apt install wpa_supplicant -y 
#iwlist $wifiint scan | grep ESSID
#echo "Enter AP Name"
#read ap 
#echo "Enter Password"
#read appass
#wpa_passphrase $ap $appass | cat > /etc/wpa_supplicant.conf
#wpa_supplicant -B -c /etc/wpa_supplicant.conf -i $wifiint 
#echo "Takeing  IP"
#dhclient $wifiint
#echo "Yourlocal ip is $(ifconfig wlp0s20f3 | grep -i inet)"
####################################
echo "installing Packages" 
#apt update -y 
#apt-get upgrade -y
#apt install sudo -y
#apt install curl -y
#apt install wine* -y
#apt install adb -y
#apt install kde-plasma-desktop -y
#apt install plasma-nm -y
#apt install cmake -y
#apt install gnome-keyring -y
####################################
echo "Copying Theme to System"

####################################
usrname=$(ls /home/)
echo "Adding $usrname to sudoers"
echo "$usrname  ALL=(ALL:ALL) ALL" >> /etc/sudoers
####################################
echo "Adding Some Repos"
echo "deb http://cz.archive.ubuntu.com/ubuntu bionic main universe" >> /etc/apt/sources.list
