#!/bin/bash
curl 'localhost:8090/jobs?appName=fvp&classPath=com.driveclutch.fvp.QRFactorizationLinearRegressionJob' -d '{ date = "a b c a b see" }'
