#!/bin/bash

echo "Git configuring."
read -p 'Global? [y/N] ' is_global
if [ "$is_global" == "y" ] || [ "$is_global" == "Y" ]; then
	global_opt="--global"
fi
read -p "Username: " name
git config $global_opt user.name "$name"
read -p "Email: " email
git config $global_opt user.email "$email"
