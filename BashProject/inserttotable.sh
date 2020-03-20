#!/bin/bash
dbname=$1
echo "Enter Table Name"
read tablename
values=($(awk -F "\"*,\"*" '{print $1}' "$tablename.csv"))
for var in `ls ~/Desktop/BashProject/$dbname`
do 
if [ $var = "$tablename.csv" ]
then
echo "Table Found"
colno=$( cat $tablename.meta | sed -n '2p' )
echo "Enter the primary column value"
read str

for primary in ${values[@]}
do
	if [ "$str" = "$primary" ]; then
	echo "Value already exists, try inserting again"
	exit
	fi
done

for (( count=1; count<colno; count++ ))
do 
echo "Enter colmn $count value"
read value 
str+=",${value}"
done
echo "${str}" >> $tablename.csv
exit
fi
done

echo "Table not found"
exit


