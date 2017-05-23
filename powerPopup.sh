#!/bin/bash
# Color directory
CD="$HOME/.Xresources"

# Fetch the Colors
BG=$(cat ${CD} | grep -i background | tail -c 8)
FG=$(cat ${CD} | grep -i foreground | tail -c 8)

BLACK=$(cat ${CD} | grep -i color8 | tail -c 8)
RED=$(cat ${CD} | grep -i color9 | tail -c 8)
GREEN=$(cat ${CD} | grep -i color10 | tail -c 8)
YELLOW=$(cat ${CD} | grep -i color11 | tail -c 8)
BLUE=$(cat ${CD} | grep -i color12 | tail -c 8)
MAGENTA=$(cat ${CD} | grep -i color13 | tail -c 8)
CYAN=$(cat ${CD} | grep -i color14 | tail -c 8)
WHITE=$(cat ${CD} | grep -i color15 | tail -c 8)

# Fonts
FONT="-schumacher-clean-bold-r-normal--15-150-75-75-c-90-iso646.1991-irv"

# Panel
PW=320
PH=48
PX=523
PY=372

echo "%{c}  %{A:p:}Shutdown%{A}  %{A:r:}Reboot%{A}  %{A:s:}Suspend%{A}  %{A:b:}Exit%{A}  " | lemonbar -g ${PW}x${PH}+${PX}+${PY} -f "$FONT" -B "$BG" -F "$FG" -dp | \
    while :; do
        read line
        case $line in
            'b')
                p=$(pgrep -n lemonbar)
                kill $p
                exit
                ;;
            's')
                ~/.i3/lock &
                p=$(pgrep -n lemonbar)
                kill $p
                exit
                ;;
            'p')
                /sbin/shutdown -h now
                exit
                ;;
            'r')
                /sbin/shutdown -r now
                exit
                ;;
        esac
    done
