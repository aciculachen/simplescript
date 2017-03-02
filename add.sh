#!/bin/bash
# Script to add a user to Linux system
user = VAL618
passwd = farnwang

if [ $(id -u) -eq 0 ]; then
	read -p "Enter username : " $user
	read -s -p "Enter password : " $passwd
	egrep "^$username" /etc/passwd >/dev/null
	if [ $? -eq 0 ]; then
		echo "$user exists!"
		exit 1
	else
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p $passwd $user
		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
	fi
else
	echo "Only root may add a user to the system"
	exit 2
fi
