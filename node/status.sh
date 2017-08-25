#!/bin/bash
count=`ps -ef | grep "node index.js" | wc -l`
if [ $count -gt 1 ];then
	echo "node程序运行当中."
else
	echo "node程序停止."
fi
