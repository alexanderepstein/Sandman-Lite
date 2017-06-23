#!/bin/bash
# Just copies the files over from the project directory into usr/local/bin
# This automatically adds sandman-lite to the path on both OSX and Linux
# Version 1.6.0
currentVersion="1.6.0"

echo "sandman-lite requires your password to continue installation"


sudo cp assets/sleep.png /usr/local/sbin ||  { echo "Installation failed" ; exit 1 ;}

if [[ "$OSTYPE" == "linux-gnu" ]]; then
  sudo apt-get install at notify-osd libnotify-bin -y ||  { echo "Installation failed" ; exit 1 ;}
elif [[ "$OSTYPE" == "darwin"* ]]; then


  command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }


  if [[ $(brew ls --versions terminal-notifier )> /dev/null ]]; then
    echo "terminal-notifier already installed :)"
  else
    echo "Installing terminal-notifier"
    brew install terminal-notifier ||  { echo "Installation failed" ; exit 1 ;}
  fi

  if [[ $(brew ls --versions reattach-to-user-namespace )> /dev/null ]]; then
    echo "reattach-to-user-namespace already installed :)"
  else
    echo "Installing reattach-to-user-namespace"
    brew install reattach-to-user-namespace ||  { echo "Installation failed" ; exit 1 ;}
  fi

  if [[ $(brew ls --versions grep )> /dev/null ]]; then
    echo "ggrep already installed :)"
  else
    echo "Installing ggrep"
    brew install grep > /dev/null  ||  { echo "Installation failed" ; exit 1 ;}
  fi

  if [[ $(brew ls --versions coreutils )> /dev/null ]]; then
    echo "coreutils already installed :)"
  else
    echo "Installing coreutils"
    brew install coreutils ||  { echo "Installation failed" ; exit 1 ;}
  fi
fi
sudo cp sandman-lite /usr/local/bin ||  { echo "Installation failed" ; exit 1 ;}
sudo chmod a+x /usr/local/bin/sandman-lite ||  { echo "Installation failed" ; exit 1 ;}
sudo cp assets/noti.sh /usr/local/sbin ||  { echo "Installation failed" ; exit 1 ;}
sudo chmod a+x /usr/local/sbin/noti.sh ||  { echo "Installation failed" ; exit 1 ;}
sudo cp assets/supdate.sh /usr/local/sbin ||  { echo "Installation failed" ; exit 1 ;}
sudo chmod a+x /usr/local/sbin/supdate.sh ||  { echo "Installation failed" ; exit 1 ;}
sudo chmod a+x uninstall.sh ||  { echo "Installation failed" ; exit 1 ;}
echo -n "( •_•)"
sleep .75
echo -n -e "\r( •_•)>⌐■-■"
sleep .75
echo -n -e "\r               "
echo  -e "\r(⌐■_■)"
sleep .5
echo
echo
echo "sandman-lite $currentVersion installed sucessfully"
