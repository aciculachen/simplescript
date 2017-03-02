#!/bin/bash
# Script to add a user to Linux system
user = VAL618
passwd = farnwang

adduser "$user"
echo "$passwd" | passwd "$user" --stdin

