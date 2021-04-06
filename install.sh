#!/bin/bash

function success () {
	echo "Installed."                                                         echo "Run bashutil --help to see how to use it."
	cd ~
	exit 0
}

function fail () {
	echo "Failed to install."
	cd ~
	exit 1
}

function ins () {
        echo "Installing..."
        cp bashutil /usr/bin
	echo "Checking if it worked.."
	cd /usr/bin
	chmod +x bashutil
	if [ -x bashutil ]; then
		success
	else
		fail
	fi
}

function ret () {
        echo "Scripting utility not installed."
        exit 0
}

echo "This may require root (sudo) permissions."
echo "Are you sure you want to proceed? It will be installed systemwide. (Y/n)"
read USRINPUT

case $USRINPUT in
        Y | y) ins;;
        N | n) ret;;
        *) echo "Unknown input." && exit 1;;
esac
