#!/bin/bash
latestVersion=$(curl -s https://api.github.com/repos/alexanderepstein/Sandman-Lite/tags | grep -Po '"name":.*?[^\\]",'| head -1 | cut -c10-15)
cd  ~
sudo rm -r Sandman-Lite  2> /dev/null
git clone https://github.com/alexanderepstein/Sandman-Lite || (echo "Couldnt download latest version" ; exit 1)
cd Sandman-Lite
git checkout $latestVersion 2> /dev/null
./install.sh
