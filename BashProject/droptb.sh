#!/bin/bash
dbname=$1

ls ~/Desktop/BashProject/$dbname | grep '\.csv$'

echo "Enter the table name to remove it"
read tablename
for var in `ls ~/Desktop/BashProject/$dbname`
do 
if [ $var = "$tablename.csv" ]
then
rm -R "$tablename.csv"
echo "Table removed succesfuly"
rm -R "$tablename.meta"
exit
fi
done 

echo "Table Does not exist" 
