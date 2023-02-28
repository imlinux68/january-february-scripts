#!/bin/bash
echo "creating directories in home location"
cd /home/$USER
sleep 1

mkdir -vp calendar/{month,week}
echo "listing of all directories under calendar"
ls calendar
echo "changing directory to calendar in absolute path"
cd /home/$USER/calendar
sleep 1
pwd
sleep 1

echo "changing directory to week in absolute path"
cd /home/$USER/calendar/week
sleep 1
pwd
sleep 1

echo "changing directory to month in absolute path"
cd /home/$USER/calendar/month
sleep 1
pwd
sleep 1

echo "return to calendar directory in relative path .."
cd ..
sleep 1
pwd
sleep 1

echo "changing directory to month in frelative path"
cd month 
sleep 1
pwd
sleep 1

echo "chenging directory to user home in absolute path"
sleep 3
cd /home/$USER
pwd
sleep 1

echo "changing directory to wee in relative path"
sleep 1
cd calendar/week/
sleep 1

echo "return to user diretory with tilda"
sleep 3
cd ~
sleep 1

echo "ATTENTION calendar is destroing!!!!!!"
rm -rvf calendar





