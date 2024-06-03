#!/bin/bash

hour=$(date +%H)

if [ $hour -ge 6 ] && [ $hour -lt 18 ]; then
	tmux source-file ~/.tmux-dark.conf
else
	tmux source-file ~/.tmux-dark.conf
fi
