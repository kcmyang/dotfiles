#/bin/bash

# i3lock-script.sh

~/bin/i3lock-themed.sh &
(while pidof i3lock; do
  if (fprintd-verify | grep verify-match); then
    killall i3lock
  fi
done) &
