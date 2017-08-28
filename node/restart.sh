#!/bin/bash
cd /$project
nodeId=`ps -ef | grep index.js | grep -v grep | awk 'END{print$2}'`
kill -9 $nodeId ; sleep 3 && nohup /root/issp/docker/node/node.sh > /tmp/node.log 2>&1
tail -f /tmp/node.log
