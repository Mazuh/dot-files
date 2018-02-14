#!/bin/bash

BASICS=('git' 'vim' 'tmux' 'firefox' 'code' 'spotify' 'curl' 'python2' 'python3')

if [ "$EUID" != 0 ]; then
	echo "You need super user permission to run this script."
	exit 1
fi

if [ `which apt-get` ]; then
	echo "'apt-get' found! Trying to update sources list."
	apt-get update
	basics_installer_cmd="apt-get install --yes"
	echo "'$basics_installer_cmd' selected for installing basics."
else
	echo "No supported package manager found."
	exit 1
fi

for basic_pkg in "${BASICS[@]}"; do
	if [ ! `which $basic_pkg` ]; then
		echo -n "'$basic_pkg' was missing, trying to install... "
		if [[ `$basics_installer_cmd $basic_pkg &> /dev/null` ]]; then
			echo "Done."
		else
			echo "Failed!!!"
		fi
	else
		echo "'$basic_pkg' already installed."
	fi
done

