#!/bin/bash
cd /
if [ ! -d /$project ];then
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
