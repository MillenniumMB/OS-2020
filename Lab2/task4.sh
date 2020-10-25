#!/bin/bash

for pid in $(ps -A o pid)
do

    file_status="/proc/"$pid"/status"
    file_sched="/proc/"$pid"/sched"

    ppid=$(grep -s "PPid" "$file_status" | grep -E -o "[0-9]+")
    sumExecRuntime=$(grep -s "sum_exec_runtime" "$file_sched" | grep -E -o "[0-9]+(.[0-9]+)?")
    nrSwithes=$(grep -s "nr_switches" "$file_sched" | grep -E -o "[0-9]+")

    if [[ -n $nrSwithes ]]
    then
        art=$(echo "scale=2; $sumExecRuntime / $nrSwithes" | bc -l)
        echo "ProcessID=$pid : Parent_ProcessID=$ppid : Average_Running_Time=$art"
    fi
done | sort -n -t = -k 2 > task4.txt
