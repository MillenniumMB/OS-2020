#!/bin/bash

K=$1
N=$2

for i in $(seq $K); do
	./newmem.bash $N&
done
exit 0
