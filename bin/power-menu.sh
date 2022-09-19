#!/bin/bash

# small power menu using rofi, i3, systemd and pm-utils
# (last 3 dependencies are adjustable below)
# tostiheld, 2016

poweroff_command="systemctl poweroff"
reboot_command="systemctl reboot"
logout_command="i3-msg exit"
hibernate_command="systemctl hibernate"
suspend_command="systemctl suspend"
lock_command="/home/marco/bin/i3lock-script.sh &"

# you can customise the rofi command all you want ...
# rofi_command="rofi -width 10 -hide-scrollbar -bg #586e75 -opacity 100 -padding 5"
rofi_command="rofi -width 10 -hide-scrollbar -padding 5"

options=$'lock\nlogout\nreboot\npoweroff\nhibernate\nsuspend'

# ... because the essential options (-dmenu and -p) are added here
eval \$"$(echo "$options" | $rofi_command -dmenu -p "power")_command"

