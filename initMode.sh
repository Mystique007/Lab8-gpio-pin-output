#!/bin/bash

for x in 0 1 2 4
do
    gpio mode $x out
    gpio write $x 0
done

