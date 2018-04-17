#!/bin/bash

./bin/runMongodStandalone.sh
sleep 5

echo "STANDALONE CRIMES_DATA.CSV"

declare -a rs=()

ips="./bin/js/localIps.js "
data="./bin/datasets/crime_data.csv"


echo "STANDALONE MODE"

echo "REAL TIME"
for i in $(seq 1 5)
	do
		rs[$i]="$( TIMEFORMAT='%R';time ( mongoimport --quiet --drop -d test -c crimes --type csv --headerline --file $data ) 2>&1 1>/dev/null )"
    echo "#$i: ${rs[$i]}"
done
echo ${rs[@]} >> ./bin/results.txt


echo "USER TIME"
for i in $(seq 1 5)
	do
		rs[$i]="$( TIMEFORMAT='%U';time ( mongoimport --quiet --drop -d test -c crimes --type csv --headerline --file $data ) 2>&1 1>/dev/null )"
		echo "#$i: ${rs[$i]}"
done
echo ${rs[@]} >> ./bin/results.txt

echo "SYSTEM TIME"
for i in $(seq 1 5)
	do
		rs[$i]="$( TIMEFORMAT='%S';time ( mongoimport --quiet  --drop -d test -c crimes --type csv --headerline --file $data ) 2>&1 1>/dev/null )"
    echo "#$i: ${rs[$i]}"
done
echo ${rs[@]} >> ./bin/results.txt


./bin/runLocalStandaloneM.sh
