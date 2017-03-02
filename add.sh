# Script to add a user to Linux
#!/bin/bash

woody="test"
echo $woody

username = "VAL618"
passwd = "farnwang"

echo "user is $username"
echo ""password is $passwd

sudo adduser "$username"

echo $username:$passwd | chpasswd
 
