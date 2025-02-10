#!/bin/bash
program="spark"
./benchmark.py $program 0.9
./benchmark.py $program 0.8
./benchmark.py $program 0.7
./benchmark.py $program 0.6
./benchmark.py $program 0.5
./benchmark.py $program 0.4
./benchmark.py $program 0.3
./benchmark.py $program 0.2
./benchmark.py $program 0.1
