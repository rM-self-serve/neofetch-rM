#!/usr/bin/env bash
pkgname='neofetch'
removefile='./remove-neofetch-rM.sh'
localbin='/home/root/.local/bin'
binfile="${localbin}/${pkgname}"

printf "\nRemove neofetch\n"
echo "This will not remove the /home/root/.local/bin directory nor the path in .bashrc"

read -r -p "Would you like to continue with removal? [y/N] " response
case "$response" in
[yY][eE][sS] | [yY])
	echo "Removing neofetch"
	;;
*)
	echo "Exiting removal"
	[[ -f $removefile ]] && rm $removefile
	exit
	;;
esac

[[ -f $binfile ]] && rm $binfile

[[ -f $removefile ]] && rm $removefile

echo "Successfully removed neofetch"
