#!/bin/bash
root=1
counter=0

read -rp "enter your num: " num

while [ $counter -lt $root ]
	do
		counter=$(( $counter + 1 ))
		root=$(( ( $num/$root + $root )/2 ))
		echo 
		echo "iteration index for now is: " $counter
		echo "your num for now is: " $num
		echo "root square for now equal: " $root
		echo
		echo 
	done

echo $root
