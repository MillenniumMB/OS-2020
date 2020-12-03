#!/bin/bash

sh inf.sh&res1=$!
sh inf.sh&res2=$!
sh inf.sh&res3=$!

renice +10 -p $res1

at now +1 minute <<< "kill ${res3}"
at now +5 minute <<< "kill ${res1} ; kill ${res2}"
