#!/bin/bash
rm -rf grocery
echo -e "\n\n1. creating directories with single command in user home"
cd ~
mkdir -p grocery/{bakery/bread/{focaccia,cholla},drinks/juices/{pepsi,Coke}}
tree grocery

echo -e "\n\n2. create file in Coke"
touch grocery/drinks/juices/Coke/Coke_not_healthy

echo -e "\n\n3. Change file permissions to r-xr-xr-x (file \“Coke_not_healthy\”)."
chmod 555 grocery/drinks/juices/Coke/Coke_not_healthy

echo -e "\n\n4. Create file \“Pepsi_zero\”."
touch grocery/Pepsi_zero

echo -e "\n\n5. Asiign to \“Pespi_zero\” rwxrwxr-x permission"
chmod 775 grocery/Pepsi_zero
ls -l grocery/Pepsi_zero


echo -e "\n\n6. Copy the file \“Pepsi_Zero\” in bread subdirectories"
echo "$(ls -d ./grocery/bakery/bread/* )" | xargs -n 1 cp -v grocery/Pepsi_zero
tree grocery

echo -e "\n\n7. Rename \“cholla\” to \“Petta\”"
mv ./grocery/bakery/bread/cholla ./grocery/bakery/bread/Petta
tree grocery

echo -e "\n\n8.move Petta to drinks"
mv  ./grocery/bakery/bread/Petta ./grocery/drinks/
tree grocery

echo -e "\n\n********************************"
echo -e "DELETING GROCERY!!!!!!!!1111"
echo      "********************************"
sleep 3
rm -rvf grocery
