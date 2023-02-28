#!/bin/bash

echo "printing working directory"
sleep 1
pwd

echo "changing directory to home user"
sleep 1
cd /home/$USER

echo "creating Myfamily and Mycolleague directories"
sleep 1
mkdir MyFamily MyCollegue

echo "entering to MyFamily directory"
sleep 1
cd /home/$USER/MyFamily

echo "returning to home directory"
cd ..

echo "removing MyFamily and Mycolleague"
sleep 3
rmdir /home/$USER/MyFamily 
echo "MyFamily removed"
rmdir /home/$USER/MyCollegue
echo "MyCollegue removed"

