#!/bin/bash

declare -a rs=()


mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_1.js
echo "Default settings:"
for i in $(seq 1 5) 
	do
		rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
    	echo "#$i: ${rs[$i]}"
done


mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_2.js
echo "Settings: w:1 and j:false"

for i in $(seq 1 5) 
        do
                rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
done


mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_3.js
echo "Settings: w:1 and j:true"
for i in $(seq 1 5) 
        do
                rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
done


mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_4.js
echo "Settings: w:2 and j:false"
for i in $(seq 1 5) 
        do
                rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
done


mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_5.js
echo "Settings: w:1 and j:true"
for i in $(seq 1 5) 
        do
                rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
        echo "#$i: ${rs[$i]}"
done

