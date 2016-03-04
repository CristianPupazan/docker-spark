#!/usr/bin/env bash
docker pull cristianpupazan1/docker-spark
docker run -d -t -p 127.0.0.1:8081:8081 --link spark_master:spark_master cristianpupazan1/docker-spark /start-worker.sh "$@"
