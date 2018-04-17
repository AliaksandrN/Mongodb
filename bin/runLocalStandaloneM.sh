#!/bin/bash

declare -a rs=()
data="./bin/datasets/mazowieckie.json"

echo "STANDALONE MODE"
sleep 5
echo "REAL TIME"
for i in $(seq 1 5)
	do
	rs[$i]="$( TIMEFORMAT='%R' ;time ( mongoimport --quiet --drop -d test -c mazowieckie --file $data ) 2>&1 1>/dev/null )"
    echo "#$i: ${rs[$i]}"
done
echo ${rs[@]} >> /bin/results.txt

echo "USER TIME"
for i in $(seq 1 5)
	do
		rs[$i]="$( TIMEFORMAT='%U' ;time ( mongoimport --quiet --drop -d test -c mazowieckie --file $data ) 2>&1 1>/dev/null )"
		echo "#$i: ${rs[$i]}"
done
echo ${rs[@]} >> ./bin/results.txt

echo "SYSTEM TIME"
for i in $(seq 1 5)
	do
		rs[$i]="$( TIMEFORMAT='%S' ;time ( mongoimport --quiet --drop -d test -c mazowieckie --file $data ) 2>&1 1>/dev/null )"
		echo "#$i: ${rs[$i]}"
done
echo ${rs[@]} >> ./bin/results.txt



killall -9 mongod
