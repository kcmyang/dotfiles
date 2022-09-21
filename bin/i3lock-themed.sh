#!/bin/bash

i3lock \
  -c 222222ff \
  --radius 120 \
  --inside-color=444444ff \
  --ring-color=ab9df233 \
  --keyhl-color=ab9df2ff \
  --bshl-color=ff6188ff \
  --insidever-color=78dce833 \
  --ringver-color=78dce8ff \
  --verif-color=fcfcfaff \
  --insidewrong-color=ff618833 \
  --ringwrong-color=ff6188ff \
  --wrong-color=fcfcfaff \
  -k \
  --time-str="%I:%M %p" \
  --time-color=fcfcfaff \
  --date-str="%a %d %b %Y" \
  --date-color=fcfcfaff \
  --wrong-text="incorrect" \
  --lockfailed-text="lock failed" \
  -e
