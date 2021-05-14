#!/bin/bash

for i in {0..68}
do
    echo "fire cpuid with eixt reason: $i"
    cpuid -l 0x4FFFFFFE -s $i
    echo
done
