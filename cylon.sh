#!/bin/bash

while true
do
for ((x=0; x<=4; ++x))
do
    gpio write $x 1
    sleep .25
    gpio write $x 0
done

for ((x=4; x>=0; --x))
do
    gpio write $x 1
    sleep .25
    gpio write $x 0
done
done
