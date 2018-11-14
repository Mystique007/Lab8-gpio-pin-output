#!/bin/bash

while true
do

rn=$RANDOM

for x in 0 1 2 4
do
   if [ $((rn&1)) -eq 1 ]; then
       gpio write $x 1
   fi
   rn=$((rn>>1))
done

sleep 0.25

for x in 0 1 2 4
do
    gpio write $x 0
done

done
