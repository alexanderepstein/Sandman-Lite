#!/bin/bash

  if (uname -o | grep Linux);then
      notify-send "Insomnia" "Time to take a rest"  -u critical -t 7000 -i sleep.ico 
  elif [[ "$OSTYPE" == "darwin"* ]]; then
      reattach-to-user-namespace insomnia-lite -t
  fi
