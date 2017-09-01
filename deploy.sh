#!/bin/bash
if [ ! -f /usr/bin/h ];then
	cp -rf /root/issp/docker/java/bin/* /usr/bin
fi
/root/issp/docker/java/run.sh
tail -f /var/log/java.log
