# Script to add a user to Linux
#!/bin/bash

username="acicula"
passwd="acicula"

echo "user is $username"
echo ""password is $passwd

echo "$passwd
$passwd" | adduser --force-badname "$username"



 
