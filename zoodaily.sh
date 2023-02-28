#!/bin/bash
echo "1. make dirs in home dir"
cd ~
rm -rf zoo
mkdir -p zoo/{predatoy/{table,leopard},birds/{parrot,chair}}

echo "2.1 fix names"
mv zoo/predatory/table zoo/predatory/lion
ls zoo/predatory/

echo "2.2 write fact to lion"
echo "parrots and lions" > zoo/predatory/lion/facts

echo "2.3 copy fact to parrot dir"
cp zoo/predatory/lion/facts zoo/birds/parrot/

echo "2.4 rename chair to chicken"
mv zoo/birds/chair/ zoo/birds/chicken/
ls zoo/birds/

echo "3. create 9 chickens"
touch zoo/birds/chicken/chicken{1..9}
ls zoo/birds/chicken/

echo "4. displlay reverse chickens"
ls -lr zoo/birds/chicken/ | tee zoo/birds/chicken/iChick
ls zoo/birds/chicken/

rm -rf ~/zoo
