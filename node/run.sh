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
nodeId=`ps -ef | grep index.js | grep -v grep | awk 'END{print$2}'`
kill -9 $nodeId ; npm start &
