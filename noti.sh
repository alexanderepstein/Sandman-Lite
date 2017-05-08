#!/bin/bash
#export DISPLAY=/private/tmp/com.apple.launchd.5jte4rZAmH/org.macosforge.xquartz:0
#export SHLVL=1
#export SECURITYSESSIONID=186a5

echo 'Start of log session' 2> ~/git/noti.log

  if (uname -o | grep Linux);then
      export DISPLAY=:0
      notify-send "Insomnia" "Time to take a rest"  -u critical -t 7000 -i sleep.ico 2> ~/git/linux.log
  elif [ "$OSTYPE" == "darwin"* ]; then
      terminal-notifier -title "Insomnia" -message "Time to take a rest"  -sound "default"  -group rest -timeout 7 -appIcon sleep.png 2> ~/git/darwin.log
  fi
