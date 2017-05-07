#!/bin/bash
# Just copies the files over from the project directory into usr/local/bin
# This automatically adds insomnia-lite to the path on both OSX and Linux
# Version 1.0.0

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    sudo cp sleep.ico /usr/local/bin
elif [[ "$OSTYPE" == "darwin"* ]]; then
    sudo cp sleep.png /usr/local/bin
fi
sudo cp insomnia-lite /usr/local/bin
sudo chmod a+x /usr/local/bin/insomnia-lite
echo "Install Sucessfull"
