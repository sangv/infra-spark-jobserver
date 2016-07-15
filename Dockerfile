FROM driveclutch/alpine-java:1.0

MAINTAINER Sang Venkatraman <sang@driveclutch.com>

USER root
WORKDIR /opt/

RUN apk update && apk upgrade && \
apk add curl

ENV JOBSERVER_MEMORY="2G"

RUN ["mkdir", "-p", "\/database"]

WORKDIR /opt
COPY spark-1.6.2/dist /opt/spark
VOLUME ["\/database"]

RUN mkdir /opt/spark/app
WORKDIR /opt/spark/
COPY app/spark-job-server.jar app/spark-job-server.jar
COPY app/server_start.sh app/server_start.sh
COPY app/server_stop.sh app/server_stop.sh
COPY app/manager_start.sh app/manager_start.sh
COPY app/setenv.sh app/setenv.sh
COPY app/log4j-stdout.properties app/log4j-server.properties
COPY app/docker.conf app/docker.conf
COPY app/docker.sh app/settings.sh

ENV SPARK_HOME="/opt/spark"

ENTRYPOINT ["/opt/spark/app/server_start.sh"]
