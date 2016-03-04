#!/usr/bin/env bash
docker pull cristianpupazan1/docker-spark
docker run -i -t -P --link spark_master:spark_master cristianpupazan1/docker-spark /spark-shell.sh "$@"
