#!/bin/sh
service=rabbitmq-server.service
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running!!!"
else
systemctl start httpd.service
fi
