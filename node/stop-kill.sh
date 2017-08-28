#!/bin/bash
nodeId=`ps -ef | grep index.js | grep -v grep | awk 'END{print$2}'`
if [ "$nodeId" != "" ];then
	kill -9 $nodeId
	echo "node程序强制停止完成."
else
	echo "mode程序未启动."
fi
