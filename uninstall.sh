#!/bin/bash
# Just a simple script to remove all insomnia-lite related files
echo Uninstalling insomnia-lite
if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo rm /usr/local/sbin/sleep.ico
elif [[ "$OSTYPE" == "darwin"* ]]; then

  sudo rm /usr/local/sbin/sleep.png
  sudo rm /usr/local/sbin/info.png
fi

sudo rm /usr/local/bin/insomnia-lite
sudo rm /usr/local/sbin/noti.sh
echo insomnia-lite successfully removed
