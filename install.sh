#!/bin/bash
if [[ $UID == "0" ]]; then
	echo "ERROR: You must run this script as user!"
	exit 1
fi

# Copy configuration files
cp i3/config ~/.config/i3/config
cp i3status/config ~/.config/i3status/config

# Reload current configurations
i3-msg -q restart

echo "Done."