#!/usr/bin/env bash

echo "1. create directories"
mkdir -p one/{two/{five,four},three/{six,seven}}

echo "2. copy one to num"
cp -r one num

echo "3. compare them"
diff -r one num

echo "4. create files"
touch one/two/four/file{A..F}.txt

echo "5. find all txt"
find ./one -name *.txt

echo "6. list only perms"
ls -l one/two/four/* | awk '{print $1}' | tee one/two/four/perm.txt

echo "7. remove directories"
rm -rf ./one ./num

echo "8. echo text to data.txt"
echo -e "The text: \n
Name, Age, Occupation \n
John, 25, Engineer \n
Samantha, 31, Scientist \n
Michael, 42, Lawyer \n
Emily, 28, Doctor" > ~/Desktop/data.txt

echo "9. replace text in file"
sed -i 's/Engineer/Software\ Developer/g' ~/Desktop/data.txt

echo "10. print only name"
awk '{print $1}' ~/Desktop/data.txt | sed 's/,//g'

echo "11. print only job"
awk '{print $NF}' ~/Desktop/data.txt

echo "12. remove first line"
awk 'NR>1' ~/Desktop/data.txt

echo "13. remove line with Lawyer"
awk '!/Lawyer/' ~/Desktop/data.txt

echo "14. delete file data.txt"
rm -rf ~/Desktop/data.txt
