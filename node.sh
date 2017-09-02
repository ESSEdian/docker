#!/bin/bash
if [ ! -f /usr/bin/h ];then
	cp -rf /root/issp/docker/node/bin/* /usr/bin
	cp -rf /root/issp/docker/node/node.sh /usr/bin/
	sed -i '$d' /usr/bin/node.sh
#projectPshellPre是在系统环境变量里面读取
	echo "$projectPshellPre node index.js &" >> /usr/bin/node.sh
fi
/root/issp/docker/node/run.sh
tail -f /var/log/node.log
