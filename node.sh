#!/bin/bash
if [ ! -f /usr/bin/h ];then
	cp -rf /root/issp/docker/node/bin/* /usr/bin
fi
/root/issp/docker/node/run.sh
tail -f /var/log/node.log
