#!/usr/bin/bash

max_pid=-1
max_size=-1

for pid in $(ps -A o pid)
do
currentSize=$(grep -s "VmSize" "/proc/"$pid"/status" | grep -E -o "[0-9]+")
if [[ $currentSize -gt $max_size ]]
then
max_pid=$pid
max_size=$currentSize
fi
done

top -p $max_pid -b -n 1 > task6.txt

vmSize=$(cat "task6.txt" | grep $max_pid | awk '{print $5}')

echo "pid VmSize:$max_pid"
echo "mem in /proc $max_size"
echo "mem in top $vmSize"
