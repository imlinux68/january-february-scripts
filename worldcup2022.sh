#!/bin/bash
WC=WorldCup2022
AS=Asia
EU=Europa
Qa=Qatar
Ja=Japan
Mo=Morroco
Wa=Wales
Po=Poland
Cr=Croatia
i=iList

echo "1. creating dir tree in user home"

cd ~
mkdir -p $WC/{$AS/{$Qa,$Ja,$Mo},$EU/{$Wa,$Po,$Cr}}

echo "2. ls and save to file asia dir"
ls $WC/$AS/ | tee $WC/$i

echo "3. go to Qatar in abs"
cd /home/$USER/$WC/$AS/$Qa

echo "4. creating file with content"
echo "Qatar deserves the championship" > Hala-Qatar

echo "5. delete content of Hala-qatart"
> Hala-Qatar

echo "6. no content in Hala Qatarr with cat and by file size = 0"
cat Hala-Qatar
ls -l Hala-Qatar | awk '{print $9, $5}'

echo "7. find 5 letters countries in Asia and save and printscreen" 
ls -l ../../Asia | awk '{print $9}' | grep -x '.\{5\}' |& tee -a /home/$USER/$WC/$i
echo "printing iList conteent"
sleep 3
cat /home/$USER/$WC/$i
sleep 3 

echo "8. go to Wales in relative"
cd ../../$EU/$Wa
pwd

echo "create 9 GarethBale"
mkdir GarethBale{1..9}

echo "10. show from 5-8"
ls | grep [5-8]

echo "11. other have only read perms in Wales"
chmod o-wx ./*
ls -la

echo "12. delete all WORLDCUP 2022!!!!!!111 "
sleep 3
rm -rvf /home/$USER/$WC
