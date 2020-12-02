#!/bin/bash
./resolver.sh&
while true
do
read line
if [[ $line == "QUIT" ]]
then
  kill -SIGTERM $(cat mypid)
  exit 0
fi
if [[ $line == "*" ]]
then 
  echo "*" > input
else echo $line > input
fi
done

