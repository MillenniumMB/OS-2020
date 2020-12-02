#!/bin/bash
./solver.sh&
while true
do
read line
case $line in
"TERM")
kill -SIGTERM $(cat mypid)
exit 0
;;
"+")
kill -USR1 $(cat mypid)
;;
"*")
kill -USR2 $(cat mypid)
;;
*)
:
;;
esac
sleep 1
done
