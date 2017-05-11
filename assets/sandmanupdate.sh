#!/bin/bash

cd  ~
sudo rm -r Sandman-Lite  2> /dev/null
git clone https://github.com/alexanderepstein/Sandman-Lite || (echo "Couldnt download latest version" ; exit 1)
cd Sandman-Lite
./install.sh
