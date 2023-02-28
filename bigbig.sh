#!/bin/bash
function big () {
echo "1. create dirsin user home"
cd /home/$USER/
mkdir -p BIG/{clothes/{mango,zara,scara},cosmetics/{flormar,Shilav}}
touch BIG/clothes/zara/zaraf.txt 
touch BIG/clothes/zara/zaraf2.txt 
touch BIG/cosmetics/flormar/flormar.txt

echo "2. display all dirs"
tree BIG

echo "3. rename SHilav"
mv $PWD/BIG/cosmetics/Shilav $PWD/BIG/cosmetics/jade
echo "3.1 got to scara"
cd BIG/clothes/scara
pwd
echo "3.2 move scara to cosmetics in relative"
mv ../scara ../../cosmetics
pwd

echo "4. echo text to zaraf.txt"
echo -n "Mango, is a Spanish clothing design and manufacturing company, Mango is
founded in Barcelona, mango is located in Spain by brothers Isak Andic and
Nahman Andic. mango designs, manufactures and markets women's and men's
clothing and accessories." > ~/BIG/clothes/zara/zaraf.txt

echo "5. copy zaraf to flormar"
cp ~/BIG/clothes/zara/zaraf.txt ~/BIG/cosmetics/flormar/flormar.txt

echo "6. replace Mango wuth flormar"
sed -i 's/Mango/flormar/gi' ~/BIG/cosmetics/flormar/flormar.txt
cat ~/BIG/cosmetics/flormar/flormar.txt

echo -e  "\n7. replace in flormar spain and spanish"
sed -i 's/spain/zanzibar/gi;s/spanish/zanzibar/gi' ~/BIG/cosmetics/flormar/flormar.txt
cat ~/BIG/cosmetics/flormar/flormar.txt

echo -e "\n\n8. remove BIG"
sleep 3
rm -rvf ~/BIG

}

function name () {
read -p "enter your name: " name
echo "Hello $name!"
}

function pos_neg () {
read -p "enter your number: " numf
if [[ $numf -gt "0" ]]
	then	
		echo "num is positive"
	else 
		echo "num is negative"
fi
}

function onetoten () {
read -p "enter your num: " anum
	if [[ $anum -gt 0 && $anum -le 10 ]]
		then
			echo "num is ok"
		else
			echo "num is bad"
	fi
}

function vowel () {
read -p "enter a letter: " letter
	if [[ $letter == "a" || $letter == "e" || $letter == "o" || $letter == "i"  || $letter == "u" ]]
	then
		echo "your letter \"$letter\" is vowel!!!!11"
	else echo "your letter \"$letter\" is not vowel!!!!11"
	fi
}

while true
do
echo "******************************"
echo "MENU SCRIPT IS RUNNING!!!!!!!!"
echo "******************************"
echo "1. run big script"
echo "2. run name script"
echo "3. run positive negative"
echo "4. run 0 to ten script"
echo "5. choose 5 to vowel script"
echo "6. exit"
	read -rp "enter a num: " choice
		case $choice in
			1) big ;;
			2) name ;;
			3) pos_neg ;;
			4) onetoten ;;
			5) vowel ;;
			6) break ;;
			*) echo -e "\n\nenter 1-6 only!!!!" && sleep 3
		esac
done

















