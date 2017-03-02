# Script to add a user to Linux
#!/bin/bash

username = "VAL618"
passwd = "farnwang"

echo "user is $username"
echo ""password is $passwd

sudo adduser "$username"

echo $username:$passwd | chpasswd
 
