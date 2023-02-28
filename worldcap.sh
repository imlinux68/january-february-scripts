#!/bin/bash
WC="WorldCup2022"
AF="Africa"
EU="Europe"
Gh="Ghana"
Se="Senegal"
Eg="Egypt"
Ne="Netherlands"
En="England"
Sp="Spain"
Tu="Tunisia"


echo "creating Worldcup library!!!!!!"
cd ~
mkdir -v $WC

cd $WC
echo "creating Africa - Europe rooms"
mkdir -v $AF $EU 
ls ~/$WC

echo "Creating African teams"
cd /home/$USER/$WC/$AF
mkdir -v $Se $Gh $Eg
ls ~/$WC/$AF
sleep 3

echo "Creating European teams"
cd /home/$USER/$WC/$EU
mkdir -v $Ne $En $Sp
ls ~/$WC/$EU

echo "removing WorldCup library"
rm -rvf ~/$WC


echo -e "\n\n\n\n"
echo ****************************
echo -e "\n\n\n\n"
echo "creating this library in single command!"
mkdir -pv /home/$USER/$WC/{$AF/{$Gh,$Eg,$Se},$EU/{$Ne,$En,$Sp}}
echo -e "\nShowing in tree"
tree /home/$USER/$WC
echo -e "\n5. Changing name Egypt to Tunisia"
mv ~/$WC/$AF/$Eg ~/$WC/$AF/$Tu

echo -e "\n6.creating file in Spain SPAINTEXT"
cd /home/$USER/$WC/$EU/$Sp
touch SPAINTEXT
ls
sleep 3
echo -e "\n7.Entering text in spaintext"
echo "VIVA ESPANIA" > SPAINTEXT
sleep 2

echo -e "\n8.Going to Ghana in absolute path"
cd /home/$USER/$WC/$AF/$Gh

echo -e "\n9.Going to England in relative path"
cd ../../$EU/$En
echo $PWD
sleep 2

echo -e "\n10.Going to $WC directory"
cd ../..
echo $PWD
sleep 2

echo -e "\n11.Going to $Ne in absolute path"
cd /home/$USER/$WC/$EU/$Ne
echo $PWD
sleep 2

echo -e "\n12.Showing $AF in relative path"
ls ../../$AF/

echo -e "\n13.Creating YALLA_GHANA here"
touch YALLA_GHANA
sleep 1
echo -e "file created"

echo -e "\n14.Move YALLA-GHANA file to $Sp"
mv YALLA_GHANA ../$Sp/
sleep 1
echo -e "\n15.Copying YALLA-GHANA file to $Se"
cp -v /home/$USER/$WC/$EU/$Sp/YALLA_GHANA /home/$USER/$WC/$AF/$Se/
sleep 3
echo -e "\n\n\n\n16. ATTENTION $WC DESTROING!!!!!!!*************"
rm -rvf /home/$USER/$WC
sleep 3
echo -e "\nWORLD CUP DESTROYED!!!!!"
