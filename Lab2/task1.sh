#!/bin/bash

proc=$(ps -u user | tail -n +2 | awk '{print $1":"$4}')
count_proc=$(echo "$proc" | wc -l)


echo "Количество процессов: $count_proc\n" > new.txt
echo -e "$proc" >> new.txt
