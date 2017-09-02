#!/bin/bash
cd /$project
nodeId=`ps -ef | grep index.js | grep -v grep | awk 'END{print$2}'`
if [ "$nodeId" != "" ];then
	if [ "$1" == "kill" ];then
		kill -9 $nodeId
	else
		kill -15 $nodeId
	fi
	sleep 2
        nodeId=`ps -ef | grep index.js | grep -v grep | awk 'END{print$2}'`
	if [ "$nodeId" != "" ];then
		echo "node程序重启失败,请查询log日志."
		exit 1
	fi
fi
#临时脚本复制到了/usr/bin目录中
nohup /usr/bin/node.sh > /var/log/node.log 2>&1
echo "node程序重启完成."
