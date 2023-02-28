#!/bin/bash 
read -p "waht suns color? " sunc 

sunc=$(echo "$sunc" | tr '[:upper:]' '[:lower:]')

if [[ $sunc == "yellow" ]]
	then 	
		echo "you right"
	else
		echo "you lose"
fi

