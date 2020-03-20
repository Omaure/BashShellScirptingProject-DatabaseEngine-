#!/bin/bash

while true

do
select choice in 'Create New Database' "List Databases" "Connect to Database" "Delete Database" "Exit"

do
case $choice in
'Create New Database')
echo "Create"
./createdb.sh
break 1;
;;
"List Databases")
echo "list" 
./listdb.sh
break 1;
;;
"Connect to Database")
echo "connect"
./connectdb.sh
break 1;
;;
"Delete Database")
echo "delete" 
./deletedb.sh
break 1;
;;
"Exit")
break 2;
;;
*)
echo "Enter a Valid option"
;;
esac
done
done

