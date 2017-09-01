#!/bin/bash
javaPid=`ps -ef | grep "jar" | grep -v grep | awk '{print$2}'`
if [ "$javaPid" != "" ];then
	kill -15 $javaPid
	echo "程序停止完成."
else
	echo "程序未运行."
fi
