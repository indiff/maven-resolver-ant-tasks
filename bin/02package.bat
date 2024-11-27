@echo off
title Packing...
rem 功能简介：打包编译代码
cd ..
set JAVA_OPTS="-server -Xms1048m -Xmx1048m -XX:PermSize=556m -XX:MaxPermSize=556M"
rem mvn -Pdev clean package -U -B -T 1C -Dmaven.test.skip=true -Dmaven.compile.fork=true
mvn clean package -U -B -T 1C -Dmaven.test.skip=true -Dmaven.compile.fork=true
cd bin
pause