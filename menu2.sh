#!/bin/bash
echo 'Please enter your choice of script: '
while true; do
    clear
    options=("ubuntu" "centos" "nginx" "quit")
    select opt in "${options[@]}"
    do
        case $opt in
            "Option 1")
                echo "you chose choice $REPLY which is $opt"
                break
                ;;
            "Option 2")
                echo "you chose choice $REPLY which is $opt"
                break
                ;;
            "Option 3")
                echo "you chose choice $REPLY which is $opt"
                break
                ;;
            "Exit")
                break 2
                ;;
            *) echo "invalid option $REPLY";;
        esac
    done
done
