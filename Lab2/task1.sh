#!/bin/bash

proc=$(ps -u user --no-headers| awk '{print $1":"$4}')
count_proc=$(echo "$proc" | wc -l)


echo "Количество процессов: $count_proc\n" > file.txt
echo -e "$proc" >> file.txt
