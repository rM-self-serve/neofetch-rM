#!/usr/bin/env bash

neofetch_rM_sha256sum='dcfdc001b040851ce4484e25ab78844a45cab9e1397ab4d8eb8292b161a6a475'

installfile='./install-neofetch-rM.sh'
localbin='/home/root/.local/bin'
binfile="${localbin}/neofetch"

printf "\nneofetch\n"
printf "A command-line system information tool written in bash 3.2+\n"
printf "Ported to ReMarkable Tablet by rM-self-serve\n"
printf "This program will be installed in %s\n" "${localbin}"
printf "%s will be added to the path in ~/.bashrc if necessary\n" "${localbin}"

read -r -p "Would you like to continue with installation? [y/N] " response
case "$response" in
[yY][eE][sS] | [yY])
	printf "Installing neofetch\n"
	;;
*)
	printf "Exiting installer and removing install script\n"
	[[ -f $installfile ]] && rm $installfile
	exit
	;;
esac

mkdir -p $localbin

case :$PATH: in
*:$localbin:*) ;;
*) echo "PATH=\"${localbin}:\$PATH\"" >>/home/root/.bashrc ;;
esac

[[ -f $binfile ]] && rm $binfile
wget https://raw.githubusercontent.com/rM-self-serve/neofetch-rM/master/neofetch \
	-P $localbin

if ! sha256sum -c <(echo "$neofetch_rM_sha256sum  $binfile") >/dev/null 2>&1; then
	echo "sha256sum did not pass, error downloading neofetch-rM"
	echo "Exiting installer and removing installed files"
	[[ -f $binfile ]] && rm $binfile
	[[ -f $installfile ]] && rm $installfile
	exit
fi

chmod +x $localbin/neofetch

printf '\nFinished installing neofetch, removing install script\n\n'

[[ -f $installfile ]] && rm $installfile
