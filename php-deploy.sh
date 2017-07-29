#!/bin/bash
if [ ! -f /home/wwwroot/default/README.md ];then
	rm -rf /home/wwwroot/default
	cd /home/wwwroot
	git clone http://$user:$password@gitlab.bjike.com:10080/$user/$project.git 
	mv $project default
	cd /home/wwwroot/default/
else
	cd /home/wwwroot/default/
	git pull
fi
if [ "$commit" != "" ];then
	git checkout $commit
else
	git checkout master
fi
service apache2 restart

while [ 1 = 1 ]

do

sleep 10000;

done 

