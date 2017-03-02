# Script to add a user to Linux
#!/bin/bash

username = VAL618
useradd "$username"
echo "farnwang" | passwd --stdin "$username"
chage -d 0 "$username"

