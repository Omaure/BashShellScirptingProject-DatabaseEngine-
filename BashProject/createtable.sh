#!/bin/bash
dbname=$1
echo Enter table name
read tablename

for var in `ls ~/Desktop/BashProject/$dbname`
do 
if [ $var = "$tablename.csv" ]
then
echo "Table already exists"
exit
fi
done

echo "Table name $tablename" >> $tablename.meta
chmod 777 $tablename.meta

echo "Enter number of columns"
read colmno
echo "$colmno" >> $tablename.meta
echo "The first colmn is the primary key"
for (( count=0; count<colmno; count++ ))
do
echo "enter column $count name"
read colmname
echo "column $count $colmname" >> $tablename.meta
done

touch $tablename.csv
chmod 777 $tablename.csv

