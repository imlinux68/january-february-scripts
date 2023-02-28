#!/bin/bash
read -p "enter your number: " num
	if [ $num -eq 0 ]
		then 
			echo "its zero"
	elif [ $(( num % 2 )) -eq 0 ]
		then
			echo "its even"
	else
		echo "its odd"
	fi
