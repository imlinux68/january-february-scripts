#!/bin/bash
echo "1. building directories tree"

mkdir zoo
mkdir zoo/birds
mkdir zoo/birds/hamster
mkdir zoo/birds/parrot
mkdir zoo/birdseagle
mkdir zoo/pets
mkdir zoo/pets/duck
mkdir zoo/pets/cat

echo "2. Show zoo content in tree"
tree zoo

echo "3. deleting zoo"
sleep 3
rm -rvf zoo

echo "4. create directories with one command"
sleep 3
mkdir -pv zoo/{birds/{hamster,parrot,eagle},pets/{duck,cat}}
zoopwd="${PWD}/zoo"

echo "5. showin zoo as tree"
tree zoo

echo "6. go to egle in abs"
cd ${PWD}/zoo/birds/eagle
pwd

echo "7. go to birds in abs path"
cd -
cd ${PWD}/zoo/birds/eagle
pwd

echo "8. list birds content"
ls ..

echo "9. go to hamster in relative path"
cd ../hamster
pwd

echo "10.display hamster path"
echo ${PWD}

echo "11. go to duck in relative"
cd ../../pets/duck
pwd

echo "12. ssh to vm"

echo "13. move hamster to pets in relative"
mv ../../birds/hamster/ ..
ls ..

echo "14. rename hamster to dogs in abs path"
a="${PWD}"; echo ${a%/%/*}  
sleep 500
echo "15. go to eagle"
cd ../../birds/eagle
pwd

echo "16. move duck to birds in relative"
mv ../../pets/duck ..
ls ..

echo "17.creating redparrot in relative path"
touch ../parrot/redparrot

echo "18. listing parrot "
ls ../parrot

echo "19. echos parrot * 3 to redprrot"
echo "parrot parrot parrot" > ../parrot/redparrot

echo "20. display content of redprrot:"
cat ../parrot/redparrot

echo "21. copy redparrot to birds"
cp ../parrot/redparrot ../
ls ..

echo "22. create blue-parrot in birds"
touch ../blue-parrot 
ls ..

echo "23. copy blue-parrot to all birds subdirs"
echo "$(ls -d ../*/)" | xargs -n 1 cp -v ../blue-parrot
tree ../

echo "24. create green parrot in birds"
touch ../green-parrot

echo "25. copy green-parrot to all birds subdir in single command"
for gp in $(ls -d ../*/); do cp ../green-parrot $gp; done


echo "26. REMOVING ZOO DIR!!!!!!!111"
sleep 3
rm -rvf $zoopwd


























