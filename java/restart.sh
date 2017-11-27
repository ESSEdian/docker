#!/bin/bash
cd /$project
jmxPort=3333
if [ "$1" != "kill" ];then
	jmxPort=$1
fi
javaPid=`ps -ef | grep "jar" | grep -v grep | awk '{print$2}'`
if [ "$javaPid" != "" ];then
	if [ "$1" == "kill" ];then
		kill -9 $javaPid
	else
		kill -15 $javaPid
	fi
	sleep 2
	javaPid=`ps -ef | grep "jar" | grep -v grep | awk '{print$2}'`
	if [ "$javaPid" != "" ];then
		echo "java程序重启失败,请查询log日志."
		exit 1
	fi
fi
nohup /root/issp/docker/java/java.sh ${jmxPort} > /var/log/java.log 2>&1
echo "java程序重启完成,输入log可查看日志."
