#!/bin/bash
dbname=$1
echo "Enter Table Name"
read tablename
for var in `ls ~/Desktop/BashProject/$dbname`
do 
if [ $var = "$tablename.csv" ]
then
cat "$tablename.csv" | sed -e 's/,,/, ,/g' | column -s, -t | less -#5 -N -S
exit
fi
done

echo "Table does not exist"

