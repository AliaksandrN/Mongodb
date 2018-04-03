#!/bin/bash

declare -a rs=()

if [ -f results.txt ]; then
  rm results.txt
fi

echo "REAL TIME"
echo "Sleep 5 before run replica set. Default settings."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_1.js
echo "Default settings:"
for i in $(seq 1 5)
	do
    sleep 5
		rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
    	echo "#$i: ${rs[$i]}"
      sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:1 and j:false."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_2.js
echo "Settings: w:1 and j:false"

for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:1 and j:true."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_3.js
echo "Settings: w:1 and j:true"
for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:2 and j:false."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_4.js
echo "Settings: w:2 and j:false"
for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:1 and j:true."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_5.js
echo "Settings: w:2 and j:true"
for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt
######################################################
######################################################
######################################################
echo "SYSTEM TIME"
echo "Sleep 5 before run replica set. Default settings."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_1.js
echo "Default settings:"
for i in $(seq 1 5)
	do
    sleep 5
		rs[$i]="$( TIMEFORMAT='%S';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
    	echo "#$i: ${rs[$i]}"
      sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:1 and j:false."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_2.js
echo "Settings: w:1 and j:false"

for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%S';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:1 and j:true."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_3.js
echo "Settings: w:1 and j:true"
for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%S';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:2 and j:false."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_4.js
echo "Settings: w:2 and j:false"
for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%S';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:1 and j:true."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_5.js
echo "Settings: w:2 and j:true"
for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%S';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt
######################################################
######################################################
######################################################
echo "USER TIME"
echo "Sleep 5 before run replica set. Default settings."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_1.js
echo "Default settings:"
for i in $(seq 1 5)
	do
    sleep 5
		rs[$i]="$( TIMEFORMAT='%U';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
    	echo "#$i: ${rs[$i]}"
      sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:1 and j:false."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_2.js
echo "Settings: w:1 and j:false"

for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%U';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:1 and j:true."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_3.js
echo "Settings: w:1 and j:true"
for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%U';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:2 and j:false."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_4.js
echo "Settings: w:2 and j:false"
for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%U';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt

echo "Sleep 5 seconds before run replica set. Settings: w:1 and j:true."
sleep 5

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_5.js
echo "Settings: w:2 and j:true"
for i in $(seq 1 5)
        do
          sleep 5
                rs[$i]="$( TIMEFORMAT='%U';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
        sleep 5
done
echo ${rs[@]} >> results.txt


killall -9 mongod

echo "Sleep 5 seconds before run standalone mode."
sleep 5

./runMongoStandalone.sh
./runLocalStandalone.sh
./buildResult.sh
google-chrome results.html
