#!/bin/bash
function pokemon () {
echo "1. makedirs in usr"
cd ~
mkdir -p Pokemon/{Bulbasaur{Ivysaur,Venusaur},Charmander/{Charmeleon,Charizard}}

echo "2. echo to charizard"
echo "Charizard is a fire Pokemon" | tee Pokemon/Charmander/Charizard/LoveCharizard

echo "3. Delete Pokemons"
rm -rvf Pokemon

echo "4.add crontab job"
echo 'echo Hello World' > cronjob1
cat cronjob1 
(crontab -l 2>/dev/null || true; echo "*/5 * * * *" /bin/bash $PWD/cronjob1) | crontab -
crontab -l

echo "5. rm cronjobfile"
rm -rvf cronjob1
crontab -r
}



function printaws () {
	echo 'hello AWS Re/Start'
}

function favcol () {
	read -p "what is your favorite color?" favcol	
		echo "$favcol"
}

function scriptn () {
sn=`basename "$0"`
echo "my Script Name is $sn"
echo "print dir with script name(sn)"
echo ${PWD}/$sn
}

function num7 () {
	read -p "enterm num 7 please" num
		if [[ $num -eq 7 ]]
			then 	
				echo "THanks"
		else echo "Heeey... Dont be mad!"
		fi
}

function num15 () {
i=1
	while [ $i -le 5 ]
		do 
			echo "$i" 
			i=$(( $i + 1 ))
		done
}

function ifex () {
	read -p "enter file name to check if exists: " fname
		if [[ -a $fname ]]	
			then 
				echo "it here"
			else
				echo "you lose" ; touch $fname
		fi
}

function num720 () {
	read -p "enter num between 7 to 20" num
		if [[ $num -lt 7 && $num -gt 20 ]]
			then
				echo "its not in range!!!!"	
			else
				echo "its fine"
		fi
}

function numcom () {
	read -p "enter two nums for compare. enter first: " num1
	read -p "enter second number to aompare" num2
		if [[ $num1 -eq $num2 ]]
			then
				echo "they are same"
			else 
				echo "they are not same"
		fi
}	

function pass () {
read -sp "enter your password: " pass
	if [[ $pass -eq 123 ]]
		then
			echo "accepted"
		else echo "denied"
	fi
}


function filedir () {
	read -p "enter file name to check if regular: " filer	
		if [[ -f $filer ]]
			then
				echo "Great"
			else
				echo "Not regular file"
		fi
}

function dirfile () {
	read -p "enter dir name to check: " $diref
		if [[ -d $diref ]]
			then
				echo "Awesome"
			else
				echo "Not regular directory"
		fi
}

function execperm () {
	read -p "enter name of file or dir that executable" exe
		if [[ -x $exe ]]
			then
				echo "Its executable"
			else
				echo "Not good"
		fi

}

function loop5 () {
read -p "enter a num between 1-5: " num
	while [[ $num -gt 0  && $num -le 5 ]]
	do
		echo " $num "
		read -p " Enter A num 1-5 : " num
	done
echo "WRONG NUMBER!!!!!!!111 "
}

function even10 () {
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


function count5 () {
firstnum=1
lastnum=5
	while [ $firstnum -le $lastnum ]
		do 
			echo "welcome $firstnum" 
			firstnum=$(( $firstnum + 1 ))
		done
}

function count1 () {

firstnum=5
lastnum=1
	while [ $firstnum -ge $lastnum ]
		do 
			echo "welcome $firstnum" 
			firstnum=$(( $firstnum - 1 ))
		done
}

function count0 () {
firstnum=4
lastnum=0
	while [ $firstnum -ge $lastnum ]
		do 
			echo "welcome $firstnum" 
			firstnum=$(( $firstnum - 1 ))
		done
}

function countuser () {
i=1
read -p "enter number to count to it: " num
	while [ $i -le $num ]
		do 			
			echo -n "$i "
			i=$(( $i + 1 )) 
		done
}

function count101 () {
firstnum=10
lastnum=1
	while [ $firstnum -ge $lastnum ]
		do 
			echo "$firstnum" 
			firstnum=$(( $firstnum - 1 ))
		done
}

function square () {
read -p "enter a number to get a square: " square
	square=$(( $square*$square ))	
	echo "$square"
}


function loop6 () {
read -p "enter a num between 1-5" num
while :
	do
		if [[ $num -lt 1 && $num -gt 5 ]]
		then
			echo "1-5 only!!" ; continue
			else echo "you right!" ; break
		fi
	done
}

loop6

while :
	do
		echo -e "\n\n\n"
		echo "************************"
		echo "choose what do you need:"
		echo "************************"
		echo "1. create pokemon script"		
		echo "2. print Aws restart"	
		echo "3. you fav color script"	
		echo "4. check what script name?"	
		echo "5. enter num 7 script"	
		echo "6. print 1-5 numbers line by line"	
		echo "7. enter filename and check if exists"	
		echo "8. enter number between 7-20"	
		echo "9. compare 2 numbers"	
		echo "10. enter password 123"	
		echo "11. check if file name is regular file"	
		echo "12. check if its directory"	
		echo "13. check if filename is executable"	
		echo "14. enter numbers 1-5 only"	
		echo "15. loop print 10 first even number"	
		echo "16. loop pronts welcome 5 times"	
		echo "17. loop prints iteratins 5 times"	
		echo "18. print echo and iteraion from 0 to 4"	
		echo "19. echo number until your prompt"	
		echo "20. loop from 10 to 1"	
		echo "21. square math script"	
		echo "22. STOP SCRIPT & QUIT"
		echo -e "\n"
			read -p "enter you choice: " c
				case $c in
					1) pokemon ;;
					2) printaws ;;
					3) favcol ;;
					4) scriptn ;;
					5) num7 ;;
					6) num15 ;;
					7) ifex ;;
					8) num720 ;;
					9) numcom ;;
					10) pass ;;
					11) filedir ;;
					12) dirfile ;;
					13) execperm ;;
					14) loop5 ;;
					15) even10 ;;
					16) count5 ;;
					17) count1 ;;
					18) count0 ;;
					19) countuser ;;
					20) count101 ;;
					21) square ;;
					22) break ;;
					*) echo "ENTER NUMBER 1-21 ONLY!!!" && sleep 3
				esac
	done






