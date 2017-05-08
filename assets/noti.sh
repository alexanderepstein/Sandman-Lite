#!/bin/bash

  if (uname -o | grep Linux);then
      export DISPLAY=:0
      notify-send "Insomnia" "Time to take a rest"  -u critical -t 7000 -i sleep.ico 2> ~/git/linux.log
  elif [[ "$OSTYPE" == "darwin"* ]]; then
      reattach-to-user-namespace insomnia-lite -t
  fi
