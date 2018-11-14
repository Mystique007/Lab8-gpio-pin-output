#!/bin/bash

number=$1
for x in 0 1 2 4:
do
    if [ $((number&1)) -eq 1 ]; then
        gpio write $x 1
    fi
    number=$((number>>1))
done

sleep 1

for x in 0 1 2 4:
do
     gpio write $x 0
done
