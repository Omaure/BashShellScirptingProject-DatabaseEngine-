#!/bin/bash

dbname=$1

ls ~/Desktop/BashProject/$dbname | grep '\.csv$' | sed -e 's/\..*$//'
exit



