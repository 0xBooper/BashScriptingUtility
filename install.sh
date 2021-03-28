#!/bin/bash

function ins () {
        echo "Installing..."
        sudo mv bashutil /usr/bin
        echo "Installed."
        echo "Run bashutil --help to see how to use it."
        exit 0
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
