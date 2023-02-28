#!/bin/bash

echo "1.create directories"
cd ~
mkdir -p Cloud/{service/Cloudtrail,Region/{Availability_Zone,LocalZone}}

echo "2.go to localzone"
cd Cloud/Region/LocalZone
pwd 

echo "3. Add a new dir “cloudwatch” under “services” from your current dir
in a relative path."
mkdir ../../service/cloudwatch

echo "4. Add a new dir “wavelengthzone” under “localzone” from your
current dir in absolute path."
mkdir wavelengthzone
ls 

echo "5. Insert the text to a file “trailvswatch” under “cloudtrail” in
relative path"
echo "The Difference between CloudWatch and CloudTrail: CloudWatch focuses on the activity of AWS services and resources, reportin on their health and performance. On the other hand, CloudTrail is a log of all actions that have taken place inside your AWS environment"> ../../service/Cloudtrail/trailvswatch
tree ~/Cloud

echo "6. Copy the file ““trailvswatch” to “cloudwatch” in absolute path
(hint: use tilde ~)"
cp ~/Cloud/service/Cloudtrail/trailvswatch ~/Cloud/service/cloudwatch/trailvswatch 
tree ~/Cloud

echo ". use the echo command with tilde to print the path of your home
directory."
echo ~

echo "8. Display and save in a file “iPid” all your VM Processor ids and
the user that every processor id belongs to."
ps -aux | awk '{print $1, $2}' | tee iPid
tree ~/Cloud

echo "9. Delete the “cloud” directory"
echo "Cloud DESTROYING!!!!!!!!!!!!!!!!"
sleep 3
rm -rvf ~/Cloud

