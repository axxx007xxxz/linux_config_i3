#!/bin/bash
if [[ $UID == "0" ]]; then
	echo "ERROR: You must run this script as user!"
	exit 1
fi

# Copy configuration files
cp i3/config ~/.config/i3/config

# Reload current configurations
i3-msg -q restart

echo "Done."