#!/bin/bash
rm -rf GitDemo
echo "1. create demo dir"
mkdir ./GitDemo

echo "2. check git in gitdemo"
git status ./GitDemo

echo "3. create file"
touch ./GitDemo/Hello.txt

echo "4. check git in gitdemo"
git status ./GitDemo

echo "5. add git init"
git init ./GitDemo
ls -la ./GitDemo

echo "6. add text to hellotxt"
echo "Hello World" > ./GitDemo/Hello.txt

echo "7. display status"
git  -C ./GitDemo  status

echo "8.add to staging"
git -C ./GitDemo add --all

echo "9. display status"
git -C ./GitDemo status

echo "10. commit"
git -C ./GitDemo commit -m "my commited file"

echo "11. display status"
git -C ./GitDemo status

echo "12. display status"
git -C ./GitDemo log
