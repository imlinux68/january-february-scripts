#!/bin/bash
read -p "enter file name: " a
#read -p "enter second num: " b


if [[ -f $a ]]
then
  echo "file exists"
else touch $a
fi

ls -l $a
