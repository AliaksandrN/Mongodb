#!/bin/bash

rm results.html
if [ -f results.html ]; then
  rm results.html
fi

echo "<!DOCTYPE html><html><body>" >> results.html
echo "<h2>Results</h2>" >> results.html
echo "<table border=/"1/">" >> results.html
echo "<tr><td>iter1</td><td>iter2</td><td>iter3</td><td>iter4</td><td>iter5</td></tr>" >> results.html


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
