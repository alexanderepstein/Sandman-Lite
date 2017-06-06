#!/bin/bash
# Just a simple script to remove all sandman-lite related files
# Version 1.5.1

echo "Uninstalling sandman-lite"

echo "sandman-lite requires your password to continue the uninstall"


sudo rm -r ~/sandman-lite ||  echo "Sandman-lite does not exist in home directory" 
sudo rm /usr/local/sbin/sleep.png  ||  { echo "Uninstall failed" ; exit 1 ;}
sudo rm /usr/local/bin/sandman-lite ||  { echo "Uninstall failed" ; exit 1 ;}
sudo rm /usr/local/sbin/noti.sh ||  { echo "Uninstall failed" ; exit 1 ;}
sudo rm /usr/local/sbin/supdate.sh ||  { echo "Uninstall failed" ; exit 1 ;}
echo
echo
echo  -n "(⌐■_■)"
sleep .75
echo -n -e "\r( •_•)>⌐■-■"
sleep .75
echo -n -e "\r             "
echo -n -e "\r( •_•)"
sleep .5
echo


echo "sandman-lite successfully removed"
