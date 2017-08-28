#!/bin/bash
if [ ! -d $project ];then
	git clone http://$user:$password@gitlab.bjike.com:10080/$user/$project.git 
	cd $project
else
	cd $project
	git pull
fi
if [ "$commit" != "" ];then
	git checkout $commit
else
	git checkout master
fi
pkill java ; sleep 3 && nohup /root/issp/docker/java/java.sh > /tmp/java.log 2>&1
tail -f /tmp/java.log
