#!/bin/bash

BASICS=('tmux' 'vim' 'git' 'mercurial' 'meld' 'firefox' 'code'\
	'spotify' 'curl' 'python2' 'python3' 'python-pip' 'python3-pip')

if [ "$EUID" != 0 ]; then
	echo "You need super user permission to run this script."
	exit 1
fi

BIN_CHECKER="which"

if [ `which apt-get` ]; then
	echo -n "'apt-get' found. Trying to update sources list (may take a while)... "
	apt-get update --yes &> /dev/null
	update_err=$?
	if [ update_err = 0 ]; then
		echo "Updated."
	else
		echo "Tried."
	fi
	basics_installer_cmd="apt-get install --yes"
	pkg_checker="dpkg --status"
	echo "'$basics_installer_cmd' selected for installing basics."
else
	echo "No supported package manager found."
	exit 1
fi

for pkg in "${BASICS[@]}"; do
	$pkg_checker $pkg &> /dev/null
	pkg_checker_err=$?
	if [ `$BIN_CHECKER $pkg` ] || [ $pkg_checker_err = 0 ]; then
		echo "'$pkg' already installed."
	else
		echo -n "'$pkg' was missing, trying to install (may take a while)... "
		$basics_installer_cmd "$pkg" &> /dev/null
		pkg_installation_err=$?
		if [ $pkg_installation_err = 0 ]; then
			echo "Done, package installed."
		else
			echo "Failed at package manager!!!"
		fi
	fi
done

