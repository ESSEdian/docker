#!/bin/bash
cd /$project
pkill java ; nohup /root/issp/docker/java/java.sh > /tmp/java.log 2>&1
tail -f /tmp/java.log
