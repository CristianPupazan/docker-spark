#!/usr/bin/env bash
export SPARK_MASTER_IP=`ifconfig eth0 | awk '/inet addr/{print substr($2,6)}'`
export SPARK_LOCAL_IP=`ifconfig eth0 | awk '/inet addr/{print substr($2,6)}'`
/usr/local/spark/sbin/start-master.sh --properties-file /spark-defaults.conf -i $SPARK_LOCAL_IP "$@"
/bin/bash
