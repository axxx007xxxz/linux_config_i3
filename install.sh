#!/bin/bash
set -e

if [[ $UID == "0" ]]; then
	echo "ERROR: You must run this script as user!"
	exit 1
fi


# Make the directories if needed
if [[ ! -d ~/.config/i3 ]]; then
	mkdir ~/.config/i3
fi
if [[ ! -d ~/.config/i3status ]]; then
	mkdir ~/.config/i3status
fi

# Copy configuration files
cp i3/config ~/.config/i3/config
cp i3status/config ~/.config/i3status/config

# Reload current configurations
i3-msg -q restart

echo "Done."