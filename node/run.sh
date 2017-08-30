#!/bin/bash
cd /
if [ ! -d /$project ];then
	if [ "$1" == "webhook" ];then
		logs=">>>>>>>>>>> webhook 克隆中  <<<<<<<<<<<"
		echo $logs
		echo $logs >> /var/log/node.log
	else
		logs=">>>>>>>>>>> 克隆中 <<<<<<<<<<<<"
		echo $logs >> /var/log/node.log
		echo $logs
	fi
	git clone http://$user:$password@gitlab.bjike.com:10080/$user/$project.git 
	cd /$project
else
	cd /$project
	git pull
fi
if [ "$commit" != "" ];then
	git checkout $commit
else
	git checkout master
fi
/root/issp/docker/node/stop.sh
nohup /root/issp/docker/node/node.sh > /var/log/node.log 2>&1
if [ "$1" == "webhook" ];then
	logs=">>>>>>>>>>>>>> node程序webhook自动部署完成  <<<<<<<<<<<<<"
	echo $logs >> /var/log/node.log 
	echo $logs
else
	logs=">>>>>>>>>>>>>> node程序启动完成 <<<<<<<<<<<<<"
	echo $logs >> /var/log/node.log
	echo $logs
fi
