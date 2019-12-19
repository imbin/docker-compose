#!/bin/sh

# mysql
cd mysql
docker build -t my_mysql .

# nginx
cd ../nginx
docker build -t my_nginx .

# php latest version
cd ../php72
docker build -t php72 .

# redis
cd ../redis
docker build -t my_redis .
