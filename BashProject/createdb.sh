#!/bin/bash

echo Enter Database Name
read dbname

for var in `ls ~/Desktop/BashProject`
do 
if [ $var = $dbname ]
then
echo "Database already exists"
exit
fi

done
mkdir $dbname
chmod 777 $dbname
echo "Database Created Succesfuly"

