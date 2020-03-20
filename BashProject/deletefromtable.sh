#!/bin/bash
dbname=$1

echo Enter table name
read tablename
values=($(awk -F "\"*,\"*" '{print $1}' "$tablename.csv"))
for var in `ls ~/Desktop/BashProject/$dbname`
do 
if [ $var = "$tablename.csv" ]
then
	echo "Table found"
	echo "Enter key to remove row"
	read key
	for primary in ${values[@]}
	do
		if [ "$key" = "$primary" ]; then
		echo "Found Key"
		sed -i "/^$key.*/d" "$tablename.csv"
		exit
		fi
	done
	echo "Key not Found"
	exit
fi
done
echo "Table does not exist"

