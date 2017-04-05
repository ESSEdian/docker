#!/bin/bash
git clone http://$user:$password@gitlab.bjike.com:10080/$user/$project.git 
cd $project
if [ "$commit" != "" ];then
	git checkout $commit
else
	git checkout master
fi
java -jar `ls | grep *.jar`
