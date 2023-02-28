#!/bin/bash


function direcs () {
echo "1. create dirs"
cd ~
mkdir -p BIG/{food/{Crocs,kingstore,BBB},market/{mega,shufersal}}

echo "2. use tree"
tree BIG
echo "3. go to kingstore"
cd BIG/food/kingstore

echo "4. move kingstre to market in relative"
mv ../kingstore ../../market/
tree ~/BIG
echo "5. rename crocs to rebar in abs"
mv ~/BIG/food/Crocs ~/BIG/food/rebAR
echo "6. Create files BBBisMyWorld and BBBUrger under BBB subdir."
touch ~/BIG/food/BBB/BBBisMyWorld
touch ~/BIG/food/BBB/BBBUrger


echo "7. insert text to bbburger"
echo "BBB is Junk but Tasty with a lot of sauce" > ~/BIG/food/BBB/BBBUrger

echo "8. copy content "
cat ~/BIG/food/BBB/BBBUrger > ~/BIG/food/BBB/BBBisMyWorld

echo "9. inser text"
echo -e "A hamburger, or simply burger, is a food consisting of
fillings—usually a patty of ground meat, typically beef—placed
inside a sliced bun or bread roll. Hamburger are often served
with cheese, lettuce, tomato, onion, pickles or chilis;
condiments such as ketchup, mustard, mayonnaise, relish, or a
\"special sauce\", often a variation of Thousand Island dressing;
and are frequently placed on sesame seed buns. A hamburger topped
with cheese is called a cheese burger." >> ~/BIG/food/BBB/BBBUrger

echo "10. count words burger"
cat ~/BIG/food/BBB/BBBUrger | grep -wc burger 

echo "11 remove big directory"
rm -rvf ~/BIG

echo "display cpu model name"
lscpu | grep "Model name"
}


function even10while () {
counter=1
read -p "enter num to count it range 10 even: " num
	if [ $((num % 2)) -eq 0 ]
		then
			echo "next 10 nums are: "
				while [ $counter -le 10 ]
					do
						num=$(( num + 2 ))
						echo -n "$num "
						counter=$(( counter + 1 ))
					done
	elif [ $((num % 2)) -ne 0 ]
		then
			num=$(( num - 1 ))
			echo "next 10 nums are: "
				while [ $counter -le 10 ]
					do
						num=$(( num + 2 ))
						echo -n "$num "
						counter=$(( counter + 1 ))
					done
	fi
}

function even10for () {
counter=1
read -p "enter num to count it range 10 even: " num
	if [ $((num % 2)) -eq 0 ]
		then
			echo "next 10 nums are: "
				for counter in {1..10}
					do
						num=$(( num + 2 ))
						echo -n "$num "
						counter=$(( counter + 1 ))
					done
	elif [ $((num % 2)) -ne 0 ]
		then
			num=$(( num - 1 ))
			echo "next 10 nums are: "
				for counter in {1..10}
					do
						num=$(( num + 2 ))
						echo -n "$num "
						counter=$(( counter + 1 ))
					done
	fi
}

function while10 () {
i=''
while [[ $i -le 10 ]]
	do
		echo "$i"
		i=$(( i + 1 ))
	done
}


function for10 () {
	for i in {1..10}
		do
			echo "$i"
			i=$(( i + 1 ))
		done
}

function username () {
authorized_users=( alice bob charlie )
watch=0
	read -p "enter a username: " name
		for user in "${authorized_users[@]}"
		do
		  if [ "$name" == "$user" ]
		  	then
				watch=1;
				echo "Found!";
				break;
		  fi
		done
			if [ $watch = 0 ]
				then
					echo " Not Found!!!"
			fi
}




function letter () {
read -p "Enter  a character: " char
	case $char in
		[[:upper:]] ) echo "upper" ;;
		[[:lower:]] ) echo "lower" ;;
		[[:digit:]] ) echo "number" ;;
 				  ? ) echo "symbol" ;;
				  * ) echo "ERRRORRRRRRRRRRRRRR" ;;
	esac
}





while :
	do
		echo -e "\n\n\n***************************"
		echo          "***************************"
		echo          "MAKE YOUR CHOISE RIGHT NOW!"
		echo          "***************************"
		echo          "***************************"
		echo "1. dir script"
		echo "2. 10 even numbers with while"
		echo "3. 10 even numbers with for"
		echo "4. 10 numbers with while"
		echo "5. 10 numbers with for"
		echo "6. username check"
		echo "7. letter case"	
		echo "8. QUIT"
			read -p "take your choice: " dir
				case $dir in
					1) direcs ;;
					2) even10 ;;
					3) even10for ;;
					4) while10 ;;
					5) for10 ;;
					6) username ;;
					7) letter ;;
					8) break ;;
					*) echo "Enter nums from 1 to 8 ONLY!" ; sleep 3 ;;
				esac

	done



