#!/bin/bash
program="faasnap"
# # size: 80000000
sed -i 's/\"size\"\(: "\)[^"]*\"/\"size\"\180000000\"/' faasnap/rootfs/guest/config.json
./benchmark.py $program 0.9 --fbench=allocate
./benchmark.py $program 0.8 --fbench=allocate
./benchmark.py $program 0.7 --fbench=allocate
./benchmark.py $program 0.6 --fbench=allocate
./benchmark.py $program 0.5 --fbench=allocate
./benchmark.py $program 0.4 --fbench=allocate
./benchmark.py $program 0.3 --fbench=allocate
./benchmark.py $program 0.2 --fbench=allocate
./benchmark.py $program 0.1 --fbench=allocate

# for file in faasnap/resources/json/*; do
#     # Check if the file exists (in case there are no JSON files)
#     if [ -f "$file" ]; then
#         echo "Processing file: $file"
#         file=$(basename "$file")
#         sed -i "s|\"input_object_key\"\(: \"\)[^\"]*\"|\"input_object_key\"\1$file\"|" faasnap/rootfs/guest/config.json
#     fi
#     ./benchmark.py $program 0.9 --fbench=json
#     ./benchmark.py $program 0.8 --fbench=json
#     ./benchmark.py $program 0.7 --fbench=json
#     ./benchmark.py $program 0.6 --fbench=json
#     ./benchmark.py $program 0.5 --fbench=json
#     ./benchmark.py $program 0.4 --fbench=json
#     ./benchmark.py $program 0.3 --fbench=json
#     ./benchmark.py $program 0.2 --fbench=json
#     ./benchmark.py $program 0.1 --fbench=json
# done

# for file in faasnap/resources/image/*; do
#     # Check if the file exists (in case there are no JSON files)
#     if [ -f "$file" ]; then
#         echo "Processing file: $file"
#         file=$(basename "$file")
#         sed -i "s|\"input_object_key\"\(: \"\)[^\"]*\"|\"input_object_key\"\1$file\"|" faasnap/rootfs/guest/config.json
#     fi
#     ./benchmark.py $program 0.9 --fbench=image
#     ./benchmark.py $program 0.8 --fbench=image
#     ./benchmark.py $program 0.7 --fbench=image
#     ./benchmark.py $program 0.6 --fbench=image
#     ./benchmark.py $program 0.5 --fbench=image
#     ./benchmark.py $program 0.4 --fbench=image
#     ./benchmark.py $program 0.3 --fbench=image
#     ./benchmark.py $program 0.2 --fbench=image
#     ./benchmark.py $program 0.1 --fbench=image
# done

# for file in faasnap/resources/ffmpeg/*; do
#     # Check if the file exists (in case there are no JSON files)
#     if [ -f "$file" ]; then
#         echo "Processing file: $file"
#         base_file=$(basename "$file")
#         cp $file /dev/shm
#         sed -i "s|\"input_object_key\"\(: \"\)[^\"]*\"|\"input_object_key\"\1$base_file\"|" faasnap/rootfs/guest/config.json
#         sed -i "s|\"output_object_key\"\(: \"\)[^\"]*\"|\"output_object_key\"\1tmp.mp4\"|" faasnap/rootfs/guest/config.json
#     fi
#     ./benchmark.py $program 0.9 --fbench=ffmpeg
#     ./benchmark.py $program 0.8 --fbench=ffmpeg
#     ./benchmark.py $program 0.7 --fbench=ffmpeg
#     ./benchmark.py $program 0.6 --fbench=ffmpeg
#     ./benchmark.py $program 0.5 --fbench=ffmpeg
#     ./benchmark.py $program 0.4 --fbench=ffmpeg
#     ./benchmark.py $program 0.3 --fbench=ffmpeg
#     ./benchmark.py $program 0.2 --fbench=ffmpeg
#     ./benchmark.py $program 0.1 --fbench=ffmpeg
# done
# sed -i "s|\"output_object_key\"\(: \"\)[^\"]*\"|\"output_object_key\"\1tmp\"|" faasnap/rootfs/guest/config.json

# ./benchmark.py $program 0.9 --fbench=chameleon
# ./benchmark.py $program 0.8 --fbench=chameleon
# ./benchmark.py $program 0.7 --fbench=chameleon
# ./benchmark.py $program 0.6 --fbench=chameleon
# ./benchmark.py $program 0.5 --fbench=chameleon
# ./benchmark.py $program 0.4 --fbench=chameleon
# ./benchmark.py $program 0.3 --fbench=chameleon
# ./benchmark.py $program 0.2 --fbench=chameleon
# ./benchmark.py $program 0.1 --fbench=chameleon


# ./benchmark.py $program 0.9 --fbench=matmul
# ./benchmark.py $program 0.8 --fbench=matmul
# ./benchmark.py $program 0.7 --fbench=matmul
# ./benchmark.py $program 0.6 --fbench=matmul
# ./benchmark.py $program 0.5 --fbench=matmul
# ./benchmark.py $program 0.4 --fbench=matmul
# ./benchmark.py $program 0.3 --fbench=matmul
# ./benchmark.py $program 0.2 --fbench=matmul
# ./benchmark.py $program 0.1 --fbench=matmul

# ./benchmark.py $program 0.9 --fbench=pyaes
# ./benchmark.py $program 0.8 --fbench=pyaes
# ./benchmark.py $program 0.7 --fbench=pyaes
# ./benchmark.py $program 0.6 --fbench=pyaes
# ./benchmark.py $program 0.5 --fbench=pyaes
# ./benchmark.py $program 0.4 --fbench=pyaes
# ./benchmark.py $program 0.3 --fbench=pyaes
# ./benchmark.py $program 0.2 --fbench=pyaes
# ./benchmark.py $program 0.1 --fbench=pyaes


# for file in faasnap/resources/*/*; do
#     # Check if the file exists (in case there are no JSON files)
#     if [ -f "$file" ]; then
#         echo "Processing file: $file"
#         base_file=$(basename "$file")
#         cp $file /dev/shm
#         sed -i "s|\"input_object_key\"\(: \"\)[^\"]*\"|\"input_object_key\"\1$base_file\"|" faasnap/rootfs/guest/config.json
#         sed -i "s|\"output_object_key\"\(: \"\)[^\"]*\"|\"output_object_key\"\1tmp\"|" faasnap/rootfs/guest/config.json
#     fi
#     ./benchmark.py $program 0.9 --fbench=compression
#     ./benchmark.py $program 0.8 --fbench=compression
#     ./benchmark.py $program 0.7 --fbench=compression
#     ./benchmark.py $program 0.6 --fbench=compression
#     ./benchmark.py $program 0.5 --fbench=compression
#     ./benchmark.py $program 0.4 --fbench=compression
#     ./benchmark.py $program 0.3 --fbench=compression
#     ./benchmark.py $program 0.2 --fbench=compression
#     ./benchmark.py $program 0.1 --fbench=compression
# done

# for file in faasnap/resources/image/*; do
#     # Check if the file exists (in case there are no JSON files)
#     if [ -f "$file" ]; then
#         echo "Processing file: $file"
#         base_file=$(basename "$file")
#         cp $file /dev/shm
#         sed -i "s|\"input_object_key\"\(: \"\)[^\"]*\"|\"input_object_key\"\1$base_file\"|" faasnap/rootfs/guest/config.json
#         sed -i "s|\"output_object_key\"\(: \"\)[^\"]*\"|\"output_object_key\"\1tmp\"|" faasnap/rootfs/guest/config.json
#     fi
#     ./benchmark.py $program 0.9 --fbench=recognition
#     # ./benchmark.py $program 0.8 --fbench=recognition
#     # ./benchmark.py $program 0.7 --fbench=recognition
#     # ./benchmark.py $program 0.6 --fbench=recognition
#     # ./benchmark.py $program 0.5 --fbench=recognition
#     # ./benchmark.py $program 0.4 --fbench=recognition
#     # ./benchmark.py $program 0.3 --fbench=recognition
#     # ./benchmark.py $program 0.2 --fbench=recognition
#     # ./benchmark.py $program 0.1 --fbench=recognition
# done

# sed -i 's/\"size\"\(: "\)[^"]*\"/\"size\"\1100\"/' faasnap/rootfs/guest/config.json
# ./benchmark.py $program 0.9 --fbench=pagerank
# ./benchmark.py $program 0.8 --fbench=pagerank
# ./benchmark.py $program 0.7 --fbench=pagerank
# ./benchmark.py $program 0.6 --fbench=pagerank
# ./benchmark.py $program 0.5 --fbench=pagerank
# ./benchmark.py $program 0.4 --fbench=pagerank
# ./benchmark.py $program 0.3 --fbench=pagerank
# ./benchmark.py $program 0.2 --fbench=pagerank
# ./benchmark.py $program 0.1 --fbench=pagerank
