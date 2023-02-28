#!/bin/bash
function num19 () {
if [ $1 -lt 9 ]
	then
		echo "smaller than nine"
fi
}

function favcol () {
	if [[ $1 == "black" ]]
		then
			echo "GREAT!"
	else echo "try again"
	fi

}


num19 "$1"
favcol "$2"
