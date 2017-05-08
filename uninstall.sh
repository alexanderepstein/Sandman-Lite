#!/bin/bash
# Just a simple script to remove all sandman-lite related files
echo Uninstalling sandman-lite
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo rm /usr/local/sbin/sleep.ico
elif [[ "$OSTYPE" == "darwin"* ]]; then

  sudo rm /usr/local/sbin/sleep.png
  sudo rm /usr/local/sbin/info.png
fi

sudo rm /usr/local/bin/sandman-lite
sudo rm /usr/local/sbin/noti.sh
echo sandman-lite successfully removed
