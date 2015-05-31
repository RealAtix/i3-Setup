#!/bin/bash

i3status --config ~/.i3status.conf | while :
do
	read line
	playing=$(mpc current)
	echo "♪:$playing | $line" || exit 1
done
