#!/bin/bash
javaPid=`ps -ef | grep "jar$" | awk '{print$2}'`
if [ "$javaPid" != "" ];then
	kill -9 $javaPid
	echo "java程序强制停止完成."
else
	echo "java程序未运行."
fi
