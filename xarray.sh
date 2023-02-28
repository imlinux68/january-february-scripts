#!/bin/bash

function irange () {
num=$1
for ((i=1; i<=$num; i++))
	do
		echo $i
	done
}

function seqrange () {
num=$1
for i in $(seq 1 $num)
	do
		echo $i
	done
}

echo "first way"
irange "$1"

echo "second way"
seqrange "$1"
