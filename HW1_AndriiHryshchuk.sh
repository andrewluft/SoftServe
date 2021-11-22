#!/bin/bash

# Make sure only root can run this script
if [ "$(id -u)" != "0" ]; 
    then
   echo "You must run this script as root"
   exit 1
fi
# Make sure the user exists
if [ ! $? -eq 0 ]; 
then
    echo "There is no user with that name"
exit 1
fi
# Make sure you are working with directory
if [ ! -d "$folder" ]; 
then
    echo "There are no such directory"
  exit 1
fi
# Changing the ownership
sudo chown -R "$user" /dev/null/
echo "$user is now the owner"
