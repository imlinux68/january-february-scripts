#!/bin/bash
while :
	do	
		echo "1 to add"
		echo "2 to substract"
		echo "3 to multiple"
		echo "4 to divide"
		echo "5 to exit"
		read -p "enter your choice: " c
		if [[ c -eq 1 ]]
		then 
			echo "your choice add"
		elif [[ c -eq 2 ]]
			then 
				echo "your choice substract"
		elif [[ c -eq 3 ]]
			then
			       echo " your choice multiply"
		elif [[ c -eq 4 ]]
	 		then 
				echo "your choice division"		
		elif [[ c -eq 5 ]]
			then
				break
		else
			echo "enter a num between 1-5"
		fi
	done	
