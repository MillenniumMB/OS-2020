#!/usr/bin/bash

for i in $(ps -A o pid,command | awk '{print $1":"$2}')
    do
        pid=$(echo $i | cut -d ":" -f 1)
        cmd=$(echo $i | cut -d ":" -f 2)
        past_bytes=$(grep -s "read_bytes" "/proc/"$pid"/io" | grep -E -o "[0-9]+")
        if [[ -n $past_bytes ]]
            then
                echo "$pid $cmd $past_bytes"
        fi
    done > "tempVII"
sleep 1m
for i in $(ps -A o pid,command | awk '{print $1":"$2}' )
    do
        pid=$(echo $i | cut -d ":" -f 1)
        cmd=$(echo $i | cut -d ":" -f 2)
        new_bytes=$(grep -s "read_bytes" "/proc/"$pid"/io" | grep -E -o "[0-9]+")
        past_bytes=$(cat "tempVII" | grep "$pid" | awk '{print $3}')
        if [[ -n $past_bytes && -n $new_bytes ]]
            then
                d_bytes=$(($new_bytes - $past_bytes))
                echo "$pid $cmd bytes:$(( $d_bytes ))"
        fi
done | sort -n -t ':' -k 3 | head -3

rm "tempVII"
