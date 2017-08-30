#!/bin/bash
cd /
if [ ! -d /$project ];then
	if [ "$1" == "webhook" ];then
		logs=">>>>>>>>>>>> webhook 克隆中  <<<<<<<<<<<"
		echo $logs >> /var/log/java.log
		echo $logs
	else
		logs=">>>>>>>>>>>> 克隆中 <<<<<<<<<<<<<<"
		echo $logs >> /var/log/java.log
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
/root/issp/docker/java/stop.sh
nohup /root/issp/docker/java/java.sh > /var/log/java.log 2>&1
if [ "$1" == "webhook" ];then
	logs=">>>>>>>>>>>>>> java程序webhook自动部署完成  <<<<<<<<<<<<<"
	echo $logs >> /var/log/java.log
	echo $logs
else
	logs=">>>>>>>>>>>>>> java程序启动完成 <<<<<<<<<<<<<<"
	echo $logs >> /var/log/java.log
	echo $logs
fi
