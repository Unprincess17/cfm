#!/bin/bash
program="faasnap"
./benchmark.py $program 0.9 --fbench=hello
./benchmark.py $program 0.8 --fbench=hello
./benchmark.py $program 0.7 --fbench=hello
./benchmark.py $program 0.6 --fbench=hello
./benchmark.py $program 0.5 --fbench=hello
./benchmark.py $program 0.4 --fbench=hello
./benchmark.py $program 0.3 --fbench=hello
./benchmark.py $program 0.2 --fbench=hello
./benchmark.py $program 0.1 --fbench=hello

./benchmark.py $program 0.9 --fbench=chameleon
./benchmark.py $program 0.8 --fbench=chameleon
./benchmark.py $program 0.7 --fbench=chameleon
./benchmark.py $program 0.6 --fbench=chameleon
./benchmark.py $program 0.5 --fbench=chameleon
./benchmark.py $program 0.4 --fbench=chameleon
./benchmark.py $program 0.3 --fbench=chameleon
./benchmark.py $program 0.2 --fbench=chameleon
./benchmark.py $program 0.1 --fbench=chameleon

./benchmark.py $program 0.9 --fbench=ffmpeg_lambda
./benchmark.py $program 0.8 --fbench=ffmpeg_lambda
./benchmark.py $program 0.7 --fbench=ffmpeg_lambda
./benchmark.py $program 0.6 --fbench=ffmpeg_lambda
./benchmark.py $program 0.5 --fbench=ffmpeg_lambda
./benchmark.py $program 0.4 --fbench=ffmpeg_lambda
./benchmark.py $program 0.3 --fbench=ffmpeg_lambda
./benchmark.py $program 0.2 --fbench=ffmpeg_lambda
./benchmark.py $program 0.1 --fbench=ffmpeg_lambda

./benchmark.py $program 0.9 --fbench=matmul_lambda
./benchmark.py $program 0.8 --fbench=matmul_lambda
./benchmark.py $program 0.7 --fbench=matmul_lambda
./benchmark.py $program 0.6 --fbench=matmul_lambda
./benchmark.py $program 0.5 --fbench=matmul_lambda
./benchmark.py $program 0.4 --fbench=matmul_lambda
./benchmark.py $program 0.3 --fbench=matmul_lambda
./benchmark.py $program 0.2 --fbench=matmul_lambda
./benchmark.py $program 0.1 --fbench=matmul_lambda

./benchmark.py $program 0.9 --fbench=pyaes_lambda
./benchmark.py $program 0.8 --fbench=pyaes_lambda
./benchmark.py $program 0.7 --fbench=pyaes_lambda
./benchmark.py $program 0.6 --fbench=pyaes_lambda
./benchmark.py $program 0.5 --fbench=pyaes_lambda
./benchmark.py $program 0.4 --fbench=pyaes_lambda
./benchmark.py $program 0.3 --fbench=pyaes_lambda
./benchmark.py $program 0.2 --fbench=pyaes_lambda
./benchmark.py $program 0.1 --fbench=pyaes_lambda

./benchmark.py $program 0.9 --fbench=compression
./benchmark.py $program 0.8 --fbench=compression
./benchmark.py $program 0.7 --fbench=compression
./benchmark.py $program 0.6 --fbench=compression
./benchmark.py $program 0.5 --fbench=compression
./benchmark.py $program 0.4 --fbench=compression
./benchmark.py $program 0.3 --fbench=compression
./benchmark.py $program 0.2 --fbench=compression
./benchmark.py $program 0.1 --fbench=compression

./benchmark.py $program 0.9 --fbench=pagerank
./benchmark.py $program 0.8 --fbench=pagerank
./benchmark.py $program 0.7 --fbench=pagerank
./benchmark.py $program 0.6 --fbench=pagerank
./benchmark.py $program 0.5 --fbench=pagerank
./benchmark.py $program 0.4 --fbench=pagerank
./benchmark.py $program 0.3 --fbench=pagerank
./benchmark.py $program 0.2 --fbench=pagerank
./benchmark.py $program 0.1 --fbench=pagerank

./benchmark.py $program 0.9 --fbench=recognition
./benchmark.py $program 0.8 --fbench=recognition
./benchmark.py $program 0.7 --fbench=recognition
./benchmark.py $program 0.6 --fbench=recognition
./benchmark.py $program 0.5 --fbench=recognition
./benchmark.py $program 0.4 --fbench=recognition
./benchmark.py $program 0.3 --fbench=recognition
./benchmark.py $program 0.2 --fbench=recognition
./benchmark.py $program 0.1 --fbench=recognition