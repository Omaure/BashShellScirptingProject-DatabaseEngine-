#!/bin/bash
dbname=$1
echo "Enter Table name"
read tablename
values=($(awk -F "\"*,\"*" '{print $1}' "$tablename.csv"))
for var in `ls ~/Desktop/BashProject/$dbname`
do 
if [ $var = "$tablename.csv" ]
then
	echo "Found Table" 
	echo "Enter the key to display the row"
	read key
	for primary in ${values[@]}
	do
		if [ "$key" = "$primary" ]; then
		echo "Found Key"
		echo "Row Values"
		output=$(cat "$tablename.csv" | grep -o "^$key.*")
		echo $output
		exit
		fi
	done
	echo "Key not Found"
	exit
fi
done

echo "Table does not exist"

