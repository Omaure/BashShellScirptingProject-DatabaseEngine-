#!/bin/bash

echo Databases available

ls -d */ | sed 's/\/$//'

echo select a database to connect to

read dbname

for var in `ls ~/Desktop/BashProject`
do 
if [ $var = $dbname ]
then
cd ~/Desktop/BashProject/$dbname
echo connected to $dbname
echo "Available databases"
ls ~/Desktop/BashProject/$dbname | grep '\.csv$'
~/Desktop/BashProject/mainftables.sh $dbname
fi
done

echo "Database doesnt Exist"
