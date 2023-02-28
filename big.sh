#!/bin/env bash
echo "1. go to desktop"
cd /home/$USER/Desktop
pwd
echo "2. create directories"
mkdir big
mkdir big/fashion
mkdir big/fashion/zara
mkdir big/fashion/japanika
mkdir big/fashion/bbb
mkdir big/food/
mkdir big/food/castro
mkdir big/food/mango
mkdir big/food/agadir
echo "3. display big content"
ls big
echo "4. display content of fashion"
ls big/fashion
echo "5. go to agadir"
cd big/food/agadir
pwd
echo "6. go to mango"
cd ../mango
pwd
echo "7. go to zara absolute"
cd /home/$USER/Desktop/big/fashion/zara
pwd
echo "8. go to agadir abs path"
cd /home/$USER/Desktop/big/food/agadir
pwd
echo "9. go to home user with tilde"
cd ~
pwd
echo "10.1 move bbb to food"
mv Desktop/big/fashion/bbb Desktop/big/food/
echo "10.2 move mango to fashion"
mv Desktop/big/food/mango Desktop/big/fashion/
echo "10.3 move japanika to food"
mv Desktop/big/fashion/japanika Desktop/big/food/
echo "10.4 move castro to fashion"
mv Desktop/big/food/castro Desktop/big/fashion/
echo "11. delete dir mango"
rmdir Desktop/big/fashion/mango
echo "12. create fst food in bbb"
touch Desktop/big/food/bbb/fast-food
echo "13. copy fastfood from bbb to agadir"
cp Desktop/big/food/bbb/fast-food Desktop/big/food/agadir
echo "14. delete big"
sleep 3
rm -rvf Desktop/big








