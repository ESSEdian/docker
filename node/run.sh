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
npm start &
