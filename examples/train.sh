#!/bin/bash

mkdir -p out outl

python -m ael.train \
    Train \
    ./tests/testdata/systems.dat \
    ./tests/testdata/systems.dat \
    -t ./tests/testdata/systems.dat \
    -d ./tests/testdata \
    -r 3.5 \
    -p 0.5 \
    -lr 0.0005 \
    -b 2 \
    -l 256 128 64 1 \
    -e 10 \
    -c 3 \
    -cm '{"X": ["P", "S"]}' \
    --removeHs \
    --scale \
    -o out \
    --plot \
    --seed 42

python -m ael.train \
    Train \
    ../tests/testdata/systems.dat \
    ../tests/testdata/systems.dat \
    -t ../tests/testdata/systems.dat \
    -d ../tests/testdata \
    -r 3.5 \
    -p 0.5 \
    -lr 0.0005 \
    -b 2 \
    -l 256 128 64 1 \
    -e 10 \
    -c 3 \
    -cm '{"X": ["P", "S"]}' \
    --removeHs \
    --scale \
    --ligmask \
    -o outl \
    --plot \
    --seed 42
