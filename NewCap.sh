#!/bin/bash
functiom makedirs() {

echo "1. Create directories as shown in the drawing by minimum commands."
mkdir -p WorldCup2022/{TeamF/{Belgium,Canada,Morocco},TeamG/{Brazil,Serbia,Cameroon}}

echo "2. Write a fact about Canada in “Toronto” File under Canada subdirectory."
echo "Fact about Canada" > WorldCup2022/TeamF/Canata/Toronto

echo "3. Rename “Serbia” to “ Switzerland”"
mv WorldCup2022/TeamG/Serbia WorldCup2022/TeamG/Switzerland

echo "4. Create Files “toto” followed by A-E (for ex, totoA. totoB...) in your current directory."
touch WorldCup2022/toto{A..E}

echo "5. Create a file named Cup and assign the permissions to -r--r--r– Under “WorldCup2022”"
touch WorldCup2022/cup && chmod 444 WorldCup2022/cup

echo "6. Then assign -rwx------- to Cup"
chmod 700 WorldCup2022/cup

echo "7. Create a new user named “FIFA”."
useradd FIFA

echo "8. Create a file by your regular user and make sure that FIFA user cannot read the content."
touch WorldCup2022/file && chmod a-r WorldCup2022/file

echo "9. Create another file named “Maradona” that the user FIFA can read but cannot write."
touch WorldCup2022/Maradona && chmod a-w WorldCup2022/Maradona

echo "10. Delete “WorldCup2022”"
rm -rvf WorldCup2022/

echo "11. Delete the new users."
userdel FIFA

}
