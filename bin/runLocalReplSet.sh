#!/bin/bash

echo "REPLICA SET CRIMES_DATA.CSV"

if [ -f ./docs/results.txt ]; then
  rm ./docs/results.txt
fi

ips="./bin/js/localIps.js "

declare -a settings=("./bin/js/conf_1.js" "./bin/js/conf_2.js" "./bin/js/conf_3.js" "./bin/js/conf_4.js" "./bin/js/conf_5.js")

declare -a rs=()


for timeMode in '%R' '%U' '%S'; do

	echo Time format is: $timeMode

	for i in $(seq 0 4)
	do
		mongo --host="localhost:27017" test $ips${settings[$i]}
		echo SETTINGS: $ips${settings[$i]}
		for j in $(seq 1 5)
		do
			rs[$j]="$( TIMEFORMAT=$timeMode ;time ( mongoimport --quiet --host replSet/localhost:27017,localhost:27018,localhost:27019 --drop -d test -c crimes --type csv --headerline --file ./bin/datasets/crime_data.csv ) 2>&1 1>/dev/null )"
			echo "#$j ${rs[$j]}"
		done
		echo "${rs[@]}" >> ./docs/results.txt
	done
done

echo "REPLICA SET MAZOWIECKIE.SH"

./bin/runLocalReplSetM.sh
