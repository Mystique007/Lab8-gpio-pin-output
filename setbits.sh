#!/bin/bash

number=$1
for x in {0..3}
do
    echo $((($number >> x) & 1))
    gpio write $x $(((number >> x) & 1))
done



