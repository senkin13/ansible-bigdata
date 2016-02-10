#!/usr/bin/env bash

# SPARK_HOME: Apache Spark is a hard dependency and must be configured.
SPARK_HOME=/opt/spark/

# HADOOP_CONF_DIR: You must configure this if you intend to run PredictionIO
#                  with Hadoop 2.
HADOOP_CONF_DIR=/etc/hadoop/conf/

# HBASE_CONF_DIR: You must configure this if you intend to run PredictionIO
#                 with HBase on a remote cluster.
HBASE_CONF_DIR=/etc/hbase/conf/

# Filesystem paths where PredictionIO uses as block storage.
HOME=/opt/pio
PIO_FS_BASEDIR=$HOME/.pio_store
PIO_FS_ENGINESDIR=$PIO_FS_BASEDIR/engines
PIO_FS_TMPDIR=$PIO_FS_BASEDIR/tmp

# Storage Repositories
PIO_STORAGE_REPOSITORIES_METADATA_NAME=pio_meta
PIO_STORAGE_REPOSITORIES_METADATA_SOURCE=MYSQL

PIO_STORAGE_REPOSITORIES_EVENTDATA_NAME=pio_event
PIO_STORAGE_REPOSITORIES_EVENTDATA_SOURCE=HBASE

PIO_STORAGE_REPOSITORIES_MODELDATA_NAME=pio_model
PIO_STORAGE_REPOSITORIES_MODELDATA_SOURCE=LOCALFS

# MySQL
PIO_STORAGE_SOURCES_MYSQL_TYPE=jdbc
PIO_STORAGE_SOURCES_MYSQL_URL=jdbc:mysql://host/pio
PIO_STORAGE_SOURCES_MYSQL_USERNAME=
PIO_STORAGE_SOURCES_MYSQL_PASSWORD=

# HDFS
#PIO_STORAGE_SOURCES_HDFS_TYPE=hdfs
#PIO_STORAGE_SOURCES_HDFS_PATH=/data/pio/models

# Local File System
PIO_STORAGE_SOURCES_LOCALFS_TYPE=localfs
PIO_STORAGE_SOURCES_LOCALFS_PATH=$PIO_FS_BASEDIR/models

# HBase
PIO_STORAGE_SOURCES_HBASE_TYPE=hbase
PIO_STORAGE_SOURCES_HBASE_HOME=/opt/cloudera/parcels/CDH/lib/hbase
