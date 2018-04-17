#!/bin/bash

rm results.html
if [ -f results.html ]; then
  rm results.html
fi

echo "<!DOCTYPE html><html><body>" >> results.html
echo "<h2>Results</h2>" >> results.html
echo "<table border=/"1/">" >> results.html
echo "<tr><td>iter1</td><td>iter2</td><td>iter3</td><td>iter4</td><td>iter5</td></tr>" >> results.html

echo "<h3>Replica set default settings 2 row</h3>" >> results.html
echo "<h3>Replica set w:1 and j:false 3 row</h3>" >> results.html
echo "<h3>Replica set w:1 and j:true 4 row</h3>" >> results.html
echo "<h3>Replica set w:2 and j:false 5 row</h3>" >> results.html
echo "<h3>Replica set w:2 and j:true 6 row</h3>" >> results.html
echo "<h3>Standalone mode 7 row</h3>" >> results.html

while read line
do
echo "<tr>" >> results.html
	declare -a arr=$(echo $line | tr " " "\n")
	for x in $arr
		do
			echo "<td>" >> results.html
		    	echo "$x" >> results.html
			echo "</td>" >> results.html
		done
echo "</tr>" >> results.html
done<results.txt


echo "<table></body></html>" >> results.html
