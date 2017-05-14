#!/bin/bash
# Just a simple script to remove all sandman-lite related files
# Version 1.3.0

echo Uninstalling sandman-lite

echo "sandman-lite requires your password to continue the uninstall"



sudo rm /usr/local/sbin/sleep.png  ||  { echo "Uninstall failed" ; exit 1 }
sudo rm /usr/local/bin/sandman-lite ||  { echo "Uninstall failed" ; exit 1 }
sudo rm /usr/local/sbin/noti.sh ||  { echo "Uninstall failed" ; exit 1 }
echo "sandman-lite successfully removed"
