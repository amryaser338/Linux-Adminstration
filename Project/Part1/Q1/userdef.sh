#!/bin/bash
if [ "$USER" != "root" ]; then
	echo "This script must be run with sudo or as root."
	exit 1
fi

a="$1"	#user name
b="$2"	#user pass
c="$3"	#group name

if [ -n "$1" ] && [ -n "$2" ] && [ -n "$3" ]; then
	echo "user name : $a user pass : $b group name : $c"
else
	echo "strings are empty"
	exit 1
fi
useradd -m -s /bin/bash -N -p "$(openssl passwd -6 "$b")" "$a"
id "$a"
groupadd -g 200 "$c"
usermod -aG $c $a
id "$a"
usermod -u 1600 -g $c $a
id "$a"

