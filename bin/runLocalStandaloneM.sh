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
		sleep 3
		rs[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/mazowieckie.xml.tar.gz | mongoimport --quiet --drop -d test -c mazowieckie ) 2>&1 1>/dev/null )"
    echo "#$i: ${rs[$i]}"
		sleep 3
done
echo ${rs[@]} >> resultsMaz.txt


echo "SYSTEM TIME"
for i in $(seq 1 5)
	do
		sleep 3
		rs[$i]="$( TIMEFORMAT='%S';time ( gunzip -c $(pwd)/datasets/mazowieckie.xml.tar.gz | mongoimport --quiet --drop -d test -c mazowieckie ) 2>&1 1>/dev/null )"
    echo "#$i: ${rs[$i]}"
		sleep 3
done
echo ${rs[@]} >> resultsMaz.txt

echo "USER TIME"
for i in $(seq 1 5)
	do
		sleep 3
		rs[$i]="$( TIMEFORMAT='%U';time ( gunzip -c $(pwd)/datasets/mazowieckie.xml.tar.gz | mongoimport --quiet --drop -d test -c mazowieckie ) 2>&1 1>/dev/null )"
  	echo "#$i: ${rs[$i]}"
		sleep 3
done
echo ${rs[@]} >> resultsMaz.txt



killall -9 mongod
