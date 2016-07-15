#!/bin/bash
docker run -v `pwd`/jobs/:/opt/spark/jobs/ -d -p 8090:8090 --net=spark -e "SPARK_MASTER=spark://$1:7077" sangv/test-spark-jobserver
