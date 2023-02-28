#!/bin/bash
echo "hello world"

function hel_aws (){
echo "hello AWS"
}


echo "hello" ; echo "this is workdir ${PWD}" 

echo "good day this is user homedir ${HOME}"

a=7
echo "this is var $a"

life="life is good"
echo $life

read -p "what is yur age: " age
echo $age

read -p "what is your fname: " age
echo $age

read -p "what is your fname and lname: " age
echo $age

sn=`basename "$0"`
echo "my Script Name is $sn"
echo "print dir with script name(sn)"
echo ${PWD}/$sn


read -rp "enter num" choice

if [[ $choice -eq "1" ]]
	then
		hel_aws
fi
