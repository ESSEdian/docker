#!/bin/bash
if [ ! -f /var/www/html/README.md ];then
	rm -rf /var/www/html
	cd /var/www
	git clone http://$user:$password@gitlab.bjike.com:10080/$user/$project.git 
	mv $project html
	cd /var/www/html/
else
	cd /var/www/html/
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

