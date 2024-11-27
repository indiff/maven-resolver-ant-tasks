@echo off
cd ..
set JAVA_OPTS="-server -Xms1048m -Xmx1048m -XX:PermSize=556m -XX:MaxPermSize=556M"
rem 过滤版本关键字 android，不过滤 M alpha 2024-11-07 15:01:57.71 .*-M.*,.*-alpha.*,
mvnd versions:display-dependency-updates "-Dmaven.version.ignore=.*android.*" > check_update%date:~0,4%%date:~5,2%%date:~8,2%.txt
mvnd versions:display-plugin-updates  >> check_update%date:~0,4%%date:~5,2%%date:~8,2%.txt
cd bin
pause