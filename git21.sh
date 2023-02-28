#!/bin/bash

echo "1. create YalaGit dir"
mkdir YalaGit​

echo "2. check git in gitdemo"
git -C ./YalaGit status

echo "3. create file"
touch YalaGit​/Hola.txt

echo "4. check git in gitdemo"
git -C YalaGit​/ status

echo "5. add git init"
git -C YalaGit​/ init
ls -la YalaGit​/

echo "6. add text to hellotxt"
echo "Hello World" > YalaGit​/Hola.txt

echo "7. display status"
git  -C YalaGit​/  status

echo "8.add to staging"
git -C YalaGit​/ add --all

echo "9. display status"
git -C YalaGit​/ status

echo "10. commit"
git -C YalaGit​/ commit -m "commited!"

echo "11. display status"
git -C YalaGit​/ status

echo "12. display status"
git -C YalaGit​/ log


