#!/bin/bash
curl 'localhost:8090/jobs?appName=fvp&classPath=com.driveclutch.fvp.QRFactorizationLinearRegressionJob' -d '{ dependent-jar-uris = ["file:///opt/spark/jobs/spark-csv_2.11-1.4.0.jar"], date = "a b c a b see" }'
