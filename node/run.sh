#!/bin/bash
cd /
if [ ! -d /$project ];then
	echo "克隆中"
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
echo "node程序启动完成."
