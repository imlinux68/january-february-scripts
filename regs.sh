#!/bin/bash
echo "1. echo 10-1"
echo {10..1}

echo "2. display even nums between 1-100"
seq 0 2 100 | xargs echo

echo "3. echo in every line"
echo -e "welcome \nto \nthis \ncourse"

echo "4. echo in every line with tabs"
echo -e "welcome \n\tto \n\tthis \n\tcourse"

echo "5. go to desktop "
cd ~/Desktop

echo "6. show relatives paths here"
find .

echo "7. show welcome to welcome"
echo "welcome to this course" > ~/Desktop/welcome.txt

echo "8.show in capital"
cat ~/Desktop/welcome.txt | tr  [:lower:] [:upper:]






