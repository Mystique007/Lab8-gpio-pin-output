#!/bin/bash

for i in 1 2 3 4 5 #Blink 5 times
do
    for x in 0 1 2 4 #Blink each of 4 LEDs 
    do
      gpio write $x 1
    done

    sleep 1

    for x in 0 1 2 4 #Blink each of 4 LEDs 
    do
      gpio write $x 0                   
    done
done

