#!/bin/bash

  if [[ "$OSTYPE" == "linux-gnu" ]]; then
      notify-send "Insomnia" "Time to take a rest"  -u critical -t 7000 -i sleep.ico

  elif [[ "$OSTYPE" == "darwin"* ]]; then
      terminal-notifier -title "Insomnia" -message "Time to take a rest"  -sound "default"  -group rest -timeout 7 -appIcon sleep.png
  fi
