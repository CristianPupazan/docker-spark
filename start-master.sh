#!/usr/bin/env bash
docker pull cristianpupazan1/docker-spark
docker run -d -t -p 127.0.0.1:8080:8080 --name spark_master cristianpupazan1/docker-spark /start-master.sh "$@"
