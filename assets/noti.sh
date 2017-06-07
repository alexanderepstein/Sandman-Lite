#!/bin/bash
# Version 1.6.0
  if (uname -o | grep Linux);then
      notify-send "Sandman" "Time to take a rest"  -u critical -t 7000 -i sleep.ico
  elif [[ "$OSTYPE" == "darwin"* ]]; then
      reattach-to-user-namespace sandman-lite -t
  fi
