#!/bin/bash
ps -ef | grep "jar" > /dev/null
if [ $? -eq 0 ];then
	echo "java程序运行当中."
else
	echo "java程序停止."
fi
