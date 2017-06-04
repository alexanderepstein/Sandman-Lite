#!/bin/bash
# Version 1.4.2
grep() {
  case "$OSTYPE" in
    darwin*) command ggrep "$@" ;; # gdate is for OSX was installed with coreutils from homebrew
    linux*)  command grep  "$@" ;; # date is built in
    *) printf 'Unsupported OS type: %s\n' "$OSTYPE" >&2 # The OS is unsupported let the user know
       exit 1 ;;
   esac
}

latestVersion=$(curl -s https://api.github.com/repos/alexanderepstein/Sandman-Lite/tags | grep -Po '"name":.*?[^\\]",'| head -1 | cut -c10-15)
cd  ~ || { echo 'Update Failed'; exit 1; }
sudo rm -r Sandman-Lite  2> /dev/null
git clone https://github.com/alexanderepstein/Sandman-Lite || (echo "Couldnt download latest version" ; exit 1)
cd Sandman-Lite || { echo 'Update Failed'; exit 1; }
git checkout $latestVersion 2> /dev/null
./install.sh
