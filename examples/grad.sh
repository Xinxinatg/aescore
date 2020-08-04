#!/bin/bash

mkdir -p out

python -m ael.grad \
    ../tests/testdata/systems.dat \
    -d ../tests/testdata \
    -r 3.5 \
    -m out/best_0.pth \
    -e out/aevc.pth \
    -am out/amap.json \
    -cm out/cmap.json