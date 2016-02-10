#!/bin/bash

export PATH=$PATH:/usr/local/bin
export SPARK_HOME=/opt/cloudera/parcels/CDH/lib/spark
export PYSPARK_SUBMIT_ARGS='--master yarn --deploy-mode client --num-executors 24 --executor-memory 10g --executor-cores 5'

export IPYTHON_OPTS="notebook --profile=pyspark"
nohup pyspark > /var/log/jupyterd/jupyterd.log 2>&1 &

