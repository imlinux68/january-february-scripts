#!/bin/bash
echo "1. I am on desktop"
cd /home/$USER/Desktop
pwd
echo "2. create directories on Desktop"
mkdir grocery
mkdir grocery/bakery 
mkdir grocery/bakery/bread
mkdir grocery/bakery/beef
mkdir grocery/bakery/chicken
mkdir grocery/meats
mkdir grocery/meats/cakes
mkdir grocery/meats/tortilla
mkdir grocery/meats/turkey
echo "3. display grocery"
ls grocery/
pwd
echo "4.display meats"
ls grocery/meats/
pwd
echo "5. go to turkey"
cd grocery/meats/turkey
pwd
echo "6. go to chicken"
cd ../../bakery/chicken
pwd
echo "7. tortilla"
cd ../../meats/tortilla
pwd
echo "8. go to bakery"
cd ../../bakery
pwd
echo "9. go to home of user"
cd ~
pwd
echo "10. go to cakes"
cd Desktop/grocery/meats/cakes
pwd
echo "11. go to meats absolute path"
cd /home/$USER/Desktop/grocery/meats
pwd
echo "12. go to turkey in absilute PATH"
cd /home/$USER/Desktop/grocery/meats/turkey
pwd
echo "13. got to bread in absolute"
cd /home/$USER/Desktop/grocery/bakery/bread
pwd
echo "14. go to chicken in abs path"
cd /home/$USER/Desktop/grocery/bakery/chicken
pwd
echo "15. go to tortilla in abs path"
cd ~/Desktop/grocery/meats/tortilla
pwd
echo "16. go to beef in abs path"
cd ~/Desktop/grocery/bakery/beef
pwd
echo "17.1 move beef to meats"
mv ~/Desktop/grocery/bakery/beef    ~/Desktop/grocery/meats/
echo "17.2 move chicken to meats"
mv ~/Desktop/grocery/bakery/chicken    ~/Desktop/grocery/meats/
echo "17.3 move totilla to bakery"
mv ~/Desktop/grocery/meats/tortilla ~/Desktop/grocery/bakery/
echo "17.4 move cakes to bakery"
mv ~/Desktop/grocery/meats/cakes ~/Desktop/grocery/bakery/
echo "18. delete cakes"
rmdir ~/Desktop/grocery/bakery/cakes
echo "19. create new file in bread"
touch ~/Desktop/grocery/bakery/bread/bakery-lovers
echo "20. copy bakery lovers to tortilla"
cp ~/Desktop/grocery/bakery/bread/bakery-lovers   ~/Desktop/grocery/bakery/tortilla/
echo "21. create file bbq in meats"
touch ~/Desktop/grocery/meats/bbq
echo "22. move bbq to chickn"
mv ~/Desktop/grocery/meats/bbq ~/Desktop/grocery/meats/chicken/
echo "23. display chicken dir"
ls ~/Desktop/grocery/meats/chicken/
echo "24. copy bbq to turkey"
cp ~/Desktop/grocery/meats/chicken/bbq   ~/Desktop/grocery/meats/turkey/
echo "DELETE GROCERY!!!!!!!"
sleep 3
rm -rvf ~/Desktop/grocery/













