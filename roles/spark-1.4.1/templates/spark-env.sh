#!/usr/bin/env bash

export STANDALONE_SPARK_MASTER_HOST=""

export SPARK_MASTER_IP=$STANDALONE_SPARK_MASTER_HOST

export SPARK_HOME=/opt/spark-1.4.0-bin-hadoop2.6

export SPARK_LOCAL_DIRS=/data0/spark,/data1/spark,/data2/spark,/data3/spark,/data4/spark,/data5/spark,/data6/spark,/data7/spark,/data8/spark,/data9/spark,/data10/spark

export HADOOP_HOME=/opt/cloudera/parcels/CDH/lib/hadoop

export LD_LIBRARY_PAT=/opt/cloudera/parcels/CDH/lib/hadoop/lib/native

export HADOOP_CONF_DIR=/etc/hadoop/conf

SPARK_DIST_CLASSPATH="$HADOOP_HOME/client/*"
SPARK_DIST_CLASSPATH="$SPARK_DIST_CLASSPATH:$($HADOOP_HOME/bin/hadoop --config $HADOOP_CONF_DIR classpath)"

export SPARK_DIST_CLASSPATH
