# Script to add a user to Linux
#!/bin/bash

username="VAL618"
passwd="farnwang"

echo "user is $username"
echo ""password is $passwd

sudo adduser --force-badname "$username"

echo $passwd | passwd --stdin $username

 
