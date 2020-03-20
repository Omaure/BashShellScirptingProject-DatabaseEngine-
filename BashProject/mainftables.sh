#!/bin/bash
options=("Create New Table" "List Tables" "Drop Table" "Insert into Table" "View Table" "Select by key"
"Delete From Table" "Exit")
dbname=$1
while true
do
select choice in "${options[@]}"

do
case $choice in
'Create New Table')
echo "Create Table"
~/Desktop/BashProject/createtable.sh $dbname
break 1;
;;
"List Tables")
echo "List of Tables" 
~/Desktop/BashProject/listtb.sh $dbname
break 1;
;;
"Drop Table")
echo "Drop Table"
~/Desktop/BashProject/droptb.sh $dbname
break 1;
;;
"Insert into Table")
echo "Insert into table" 
~/Desktop/BashProject/inserttotable.sh $dbname
break 1;
;;
"View Table")
echo "View table" 
~/Desktop/BashProject/viewtable.sh $dbname
break 1;
;;
"Select by key")
echo "Select by key" 
~/Desktop/BashProject/selectbykey.sh $dbname
break 1;
;;
"Delete From Table")
echo "delete from table" 
~/Desktop/BashProject/deletefromtable.sh $dbname
break 1;
;;
"Exit")
break 2;
;;
*)
echo "Etner a Valid option" 
;;
esac
done
done
