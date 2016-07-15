docker run -v `pwd`/jobs/:/opt/spark/jobs/ -d -p 8090:8090 --net=spark sangv/test-spark-jobserver
