#!/bin/bash

# cgroup2
sudo mkdir /cgroup2 && \
./setup/init_bench_cgroups.sh && \


# faasnap
git submodule update --init  --recursive && \
pushd faasnap && \
sudo apt install -y redis-server && \
pip install grpcio grpcio-tools numpy scipy scikit-learn psutil redis flask chameleon pyaes && \
python populate_resource.py && \
popd && \

pushd quicksort && make && popd && \

# spark
pushd ~ && \
wget https://archive.apache.org/dist/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz && \
tar -xzf spark-2.4.0-bin-hadoop2.7.tgz && \
rm spark-2.4.0-bin-hadoop2.7.tgz
sudo apt install openjdk-8-jdk && \
mkdir -p ~/spark-2.4.0-bin-hadoop2.7/data/sosp/ && \
tar -zxvf web-BerkStan.txt.tar.gz -C ~/spark-2.4.0-bin-hadoop2.7/data/sosp/ && \
popd

pushd spark/pagerank/ && \
echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" | sudo tee /etc/apt/sources.list.d/sbt.list && \
echo "deb https://repo.scala-sbt.org/scalasbt/debian /" | sudo tee /etc/apt/sources.list.d/sbt_old.list && \
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 && \
sudo apt-get update && \
sudo apt-get install sbt && \
sbt compile && \
# In my case, only after run, I got the pagerank jar file
sbt run && \
popd && \

pushd stream && make && popd

