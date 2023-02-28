#!/bin/bash

if [[ $# -ne 3 ]]
then
	echo "ERROR"
	exit
elif 


num1=$1
num2=$2
operator=$3
num=$(num1 + num2)
