#!/bin/bash
# Simple login simulation using conditions

correct_user="admin"
correct_pass="1234"

read -p "Enter username: " user
read -sp "Enter password: " pass
echo ""

if [ "$user" = "$correct_user" ] && [ "$pass" = "$correct_pass" ]; then
    echo "Login successful. Welcome, $user!"
else
    echo "Access denied. Invalid credentials."
fi
