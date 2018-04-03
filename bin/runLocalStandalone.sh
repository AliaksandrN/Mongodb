#!/bin/bash

declare -a rs=()
echo "///////////////////////////"
echo "///////////////////////////"
echo "///////////////////////////"

echo "STANDALONE MODE"
sleep 5
echo "REAL TIME"
for i in $(seq 1 5)
	do
		rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --drop -d test -c crimes ) 2>&1 1>/dev/null )"
    	echo "#$i: ${rs[$i]}"
done
echo ${rs[@]} >> results.txt


echo "SYSTEM TIME"
for i in $(seq 1 5)
	do
		rs[$i]="$( TIMEFORMAT='%S';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --drop -d test -c crimes ) 2>&1 1>/dev/null )"
    	echo "#$i: ${rs[$i]}"
done
echo ${rs[@]} >> results.txt

echo "USER TIME"
for i in $(seq 1 5)
	do
		rs[$i]="$( TIMEFORMAT='%U';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --drop -d test -c crimes ) 2>&1 1>/dev/null )"
    	echo "#$i: ${rs[$i]}"
done
echo ${rs[@]} >> results.txt



killall -9 mongod
