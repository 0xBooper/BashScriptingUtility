#!/bin/bash

echo "Uninstalling..."
echo "This may require sudo priviledges."
sudo rm /usr/bin/bashutil
sudo cd /usr/bin
[ -x "bashutil" ] && echo "Bashutil failed to be removed"; exit 1
[ ! -x "bashutil" ] && echo "Bashutil successfully been removed."; exit 0
