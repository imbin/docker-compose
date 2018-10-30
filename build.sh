#!/bin/sh

# mysql
cd mysql
docker build -t my_mysql .

# nginx
cd ../nginx
docker build -t my_nginx .

# php latest version
cd ../php7
docker build -t php7 .

# php54
cd ../php54
docker build -t php54 .

# php56
cd ../php56
docker build -t php56 .

# php71
cd ../php71
docker build -t php71 .

# redis
cd ../redis
docker build -t my_redis .
