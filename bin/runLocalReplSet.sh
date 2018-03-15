#!/bin/bash

mongo --quiet --host="localhost:27001" test ./js/localIps.js ./js/conf_1.js

echo "Default settings:"

declare -a rs1=()
for i in $(seq 1 5)
  do
    rs1[$i]="$( TIMEFORMAT='%R';time ( gunzip -c $(pwd)/datasets/Crime_Data_2010_2017.csv.tar.gz | mongoimport --quiet --host replSet/localhost:27001,localhost:27002,localhost:27003 --drop -d test -c crimes ) 2>&1 1>/dev/null )"
    echo "#$i: ${rs1[$i]}"
  done



