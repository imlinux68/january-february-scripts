#!/bin/bash
function sunc () {
read -p "what sun color? " sunc
if [[ $sunc == "yellow" ]]	
	then
		echo "right"
	else	
		echo "false"
fi
}

function skyc () {
read -p "what sky color? " skyc
if [[ $skyc == "blue" ]]	
	then
		echo "right"
	else	
		echo "false"
fi
}

function user_age () {
read -p "what is your age to vote? " agevote
if [[ $agevote -ge "18" ]]
	then	
		echo "go vote!"
	else
		echo "you too young"
fi
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

function var10 () {
var1=10
if [[ $var1 -gt 5 ]]
	then
		echo "value is true"
fi

}


function oddeven () {
	read -p "enter a num: " anum
	if [[ $anum%2 -eq 0 ]]
	then	
		echo "the num is even"
	else 
		echo "the num is odd"
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


function tenfifteen () {
var1=10
if [[ $var1 -lt 15 && $var1 -lt 5 ]]
	then 	
		echo "the value true"
fi
}


function season () {
read -p "what is your lovely season? " season
if [[ $season == "spring" || $season == "autumn"  ]]
	then 	
	       echo "me too"
       else	
		echo "nice to know"
fi		
}


season
