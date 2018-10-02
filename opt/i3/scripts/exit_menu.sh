#!/bin/bash

case "$1" in
        lock)
                cinnamon-screensaver-command -l
                #i3lock --color 475263
        ;;
        logout)
                while [ "$select" != "NO" -a "$select" != "YES" ]
                do
                        select=$(echo -e 'NO\nYES' | dmenu -nb '#2f343f' -nf '#f3f4f5' -sb '#9575cd' -sf '#f3f4f5' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*' -i -p "Are you sure you want to logout?")
                        [ -z "$select" ] && exit 0
                done
                [ "$select" = "NO" ] && exit 0
                i3-msg exit
        ;;
        suspend)
                while [ "$select" != "NO" -a "$select" != "YES" ]
                do
                        select=$(echo -e 'NO\nYES' | dmenu -nb '#2f343f' -nf '#f3f4f5' -sb '#9575cd' -sf '#f3f4f5' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*' -i -p "Are you sure you want to $1?")
                        [ -z "$select" ] && exit 0
                done
                [ "$select" = "NO" ] && exit 0
                cinnamon-screensaver-command -l
                systemctl $1
	;;
        reboot|poweroff)
                while [ "$select" != "NO" -a "$select" != "YES" ]
                do
                        select=$(echo -e 'NO\nYES' | dmenu -nb '#2f343f' -nf '#f3f4f5' -sb '#9575cd' -sf '#f3f4f5' -fn '-*-*-medium-r-normal-*-*-*-*-*-*-100-*-*' -i -p "Are you sure you want to $1?")
                        [ -z "$select" ] && exit 0
                done
                [ "$select" = "NO" ] && exit 0
                systemctl $1
	;;
        *)
        echo "Usage: $0 {lock|logout|suspend|reboot|shutdown}"
        exit 2
esac

exit 0
