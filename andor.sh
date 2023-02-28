#!/bin/bash
function favcol () {
read -p "enter my favorite color: " col
	if [[ $col = "black" || $col = "yellow" ]]
		then
			echo "Great"
		else 
			echo "Try again!"
	fi
}


function lucky () {
read -p "guess a firstmnum: " num1
read -p "guess a second num: " num2
	if [[ $num1 -eq 7 && $num2 -eq 77 ]] || [[ $num1 -eq 77 && $num2 -eq 7 ]]
		then 
			echo "YOU GUESS!!!"
		else echo "hard luck"
	fi
}

favcol
lucky
