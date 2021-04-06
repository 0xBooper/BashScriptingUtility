#!/bin/bash

echo "Uninstalling..."
rm /usr/bin/bashutil
cd /usr/bin
if [ -x bashutil ]; then
	echo "Bashutil successfully been removed."
	cd ~
	exit 0
else
	echo "Bashutil failed to be removed"
	cd ~
	exit 1
fi
