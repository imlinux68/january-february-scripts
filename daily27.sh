#!/bin/bash
function dirs () {
echo "1. create dirs"
cd ~
mkdir -p Cloud/{S3/{Standart-IA,S3\ Glacier},VPC/{Standart,EBS,ACL}}

echo "2. Move “standard” to “s3” "
mv ~/Cloud/VPC/Standart ~/Cloud/S3/

echo "3. Rename “EBS” to “CIDR”"
mv ~/Cloud/VPC/EBS ~/Cloud/VPC/CIDR

echo "4. Go to “CIDR” dir."
cd Cloud/VPC/CIDR/

echo "5. Insert the text to a file “whatisglacier” under “s3 Glacier” in relative path"
echo "S3 Glacier Instant Retrieval storage class allows you to archive older media
content affordably while still making it available in milliseconds when it's needed." > ../../S3/S3\ Glacier/whatisglacier

echo "6. copy content"
cat ~/Cloud/S3/S3\ Glacier/whatisglacier > ~/Cloud/VPC/glacieragain

echo "7.  print pwd with tilde"
echo ~

echo "8. Assign for “whatisglacier” dir w + r permissions only to user + others ."
chmod u+o=r+w ~/Cloud/S3/S3\ Glacier/whatisglacier

echo "9.remove cloud dir"
sleep 3
rm -rvf ~/Cloud
}

function dailywhile (){
	while :
	do
	echo -e "\nchoose your daily motivation 1-7 only\n\n"
	read c
		case $c in
			1) echo "Success is not final; failure is not fatal: It is the courage to continue that
counts" ;;
			2) echo "It is better to fail in originality than to succeed in imitation." ;;
			3) echo "The road to success and the road to failure are almost exactly the same." ;;
			4) echo "Success usually comes to those who are too busy looking for it." ;;
			5) echo "Develop success from failures. Discouragement and failure are two of the surest stepping stones to success." ;;
			6) echo "I never dreamed about success. I worked for it." ;;
			7) echo "To know how much there is to know is the beginning of learning to live." ;;
		esac
	done
}

function dailyfor () {
sentences=(
"Success is not final; failure is not fatal: It is the courage to continue thatcounts" 
"It is better to fail in originality than to succeed in imitation."
"The road to success and the road to failure are almost exactly the same."
"Success usually comes to those who are too busy looking for it." 
"Develop success from failures. Discouragement and failure are two of the surest stepping stones to success."
"I never dreamed about success. I worked for it."
"To know how much there is to know is the beginning of learning to live." 
)

echo -e "\nchoose your daily motivation 1-7 only\n\n"
watch=0
read c
for sent in "${sentences[@]}"
	do
		if [ "$c" == "$sent" ]
			then
				watch=1;
				echo "${sentences[$sent - 1]}";
				break;
		fi
	done
	if [ $watch = 0 ]
		then
			echo "number from 1 to 7 ONLY!"
	fi
}

function hellotofile () {
	echo "Hello World" > ./Ahlan
}

function colors () {
 read -p "enter your favorite color" color
	if [[ $color == "red" ]]
		then
			echo "Good choice! Red is a great color"
	elif [[ $color == "blue" ]]
		then 
			echo "Blue is a
nice color."
	elif [[ $color == "green" ]]
		then
			echo "Green is a good choice too!"
	else 
		echo "Sorry, I don't recognize that color."
	fi
}

function printfiles () {
	for FILE in *
		do 
			echo $FILE
		done
}

function oddnums () {
i=0
while [ $i -lt 20 ]
do
  float=$(( $i % 2 ))  
	if [ $float -ne 0 ]
  		then
    		echo $i
  	fi  
i=$(( i + 1 ))
done
}

function multitable () {
echo "Enter the number for multiply"
read n
i=1
while [ $i -le 10 ]
	do
		sum=$(( $i * $n ))
		echo "$n * $i = $sum" 
		((++i))
	done
}


function stardraw () {
stars=4
row=1
while [[ $row -le $stars ]]
	do
	col=1
		while [[ $col -le $stars ]]
			do
				echo -n "*"
				echo -n " "
				let col=col+1
			done
			echo ""
		let row=row+1
	done
}

while :
do
	echo -e "\n\n\n"
	echo "************************"
	echo "choose what do you need:"
	echo "************************"
	echo "1. create dirs"
	echo "2. print daily with while"
	echo "3. print daily with for"
	echo "4. print hello to file"
	echo "5. choose colors"
	echo "6. printfiles in this directory"
	echo "7. print only odd nums"
	echo "8. print multitable"
	echo "9.draw stars"
	read choice
		case $choice in
			1) dirs ;;
			2) dailywhile ;;
			3) dailyfor ;;
			4) hellotofile ;;
			5) colors ;;
			6) printfiles ;;
			7) oddnums ;;
			8) multitable ;;
			9) stardraw ;;
			*) echo "ENTER NUMBER 1-9 ONLY!!!" && sleep 3
		esac
done
