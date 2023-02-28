#!/bin/bash
rm -rf grocery
echo "1. build directories tree"
mkdir -p grocery/{Fruit/{Mango,Eggs},Vegetables/{Celery,Onion}}

echo "2. rename eggs to Grapes"
mv grocery/Fruit/Eggs grocery/Fruit/Grapes

echo "3. write in 2 commands"
echo "Fruit is not a dessert" > grocery/Fruit/Grapes/Banana
cat grocery/Fruit/Grapes/Banana
echo "Fruit  is not a dessert" | tee grocery/Fruit/Grapes/Banana
cat grocery/Fruit/Grapes/Banana

echo "4. copy banana to mango and Celery"
tee grocery/Fruit/Mango/banana grocery/Vegetables/Celery/banana < grocery/Fruit/Grapes/Banana

echo "5.mkdir TOmato in Vegetables and move to Fruits"
mkdir grocery/Vegetables/Tomato && mv grocery/Vegetables/Tomato grocery/Fruit

echo "6. delete grocery dir"
echo -e "\n\n********************************"
echo "Attention GROCERY DELETING!!!!!!!!!11"
echo "*******************************"
sleep 3
rm -rvf grocery

echo "install FTP"
sudo apt install vsftpd -y

echo "check ftp status"
sudo systemctl status vsftpd

