#!/bin/bash

echo Available databases are

ls -d */ | sed 's/\/$//'

echo Enter the name of Database to delete

read dbname

for var in `ls ~/Desktop/BashProject`
do 
if [ $var = $dbname ]
then
rm -R ~/Desktop/BashProject/$dbname
echo Database removed succesfuly
exit
fi
done 
echo Database doesnt exist



