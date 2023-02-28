#!/usr/bin/env bash

echo "1. check if on Desktop"
cd /home/$USER/Desktop 
pwd


echo "2. check name of user"
whoami

echo "3.create directories"
mkdir -p Cellular/{Samsung/{Note,Galaxy,Flip-Z},Apple/{Pro-Max,XR,Pro}}

echo "4. display tree"
tree Cellular

echo "5. go to galaxy"
cd Cellular/Samsung/Galaxy
pwd

echo "6. go to XR"
cd ../../Apple/XR
pwd

echo "7. go to Note"
cd ../../Samsung/Note
pwd

echo "8. go to Pro-Max"
cd ../../Apple/Pro-Max
pwd

echo "9. create ipad in samsung"
touch ../../Samsung/ipad
ls ../../Samsung/

echo "10. move ipad to apple"
mv ../../Samsung/ipad ..
ls ..

echo "11. create apple4ever in xr"
touch ../XR/apple4ever
ls ../XR/

echo "12. copy apple4ever to all apple directories"
find ~/Desktop/Cellular/Apple/Pro-Max ~/Desktop/Cellular/Apple/Pro -maxdepth 0 -type d -exec cp ~/Desktop/Cellular/Apple/XR/apple4ever {} \;
tree ../..


echo "13. delete Flip-Z"
ls /home/$USER/Desktop/Cellular/Samsung/
rmdir /home/$USER/Desktop/Cellular/Samsung/Flip-Z
ls /home/$USER/Desktop/Cellular/Samsung/


echo "14. rename Note ultra"
mv /home/$USER/Desktop/Cellular/Samsung/Note /home/$USER/Desktop/Cellular/Samsung/ultra 
ls /home/$USER/Desktop/Cellular/Samsung/


echo "15. go to XR in abs"
cd /home/$USER/Desktop/Cellular/Apple/XR
pwd

echo "16. go to Samsung in relative"
cd ../../Samsung
pwd

echo "17. go to Pro in relative"
cd ../Apple/Pro
pwd

echo "18. check ssh status"
sudo systemctl status ssh

echo "19. start ssh"
sudo systemctl start ssh

echo "20. WINDOWS!!!!!!!!!!!!:("
sleep 1
echo "21. WINDOWS AGAIN!!!!!!!!!!!!:("
sleep 1

echo "22. create mobaeverywhere"
touch ~/Desktop/Cellular/mobaeverywhere

echo "23. echoing to mobaeverywherefile"
echo “hello world from moba” > ~/Desktop/Cellular/mobaeverywhere

echo "24. Delete Cellular"
sleep 3
rm -rvf $HOME/Desktop/Cellular
echo "EVERYTHING DELETED!!!!!!!!!!!!!!"




































