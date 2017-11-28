#!/bin/bash
if [ ! -f /usr/bin/h ]
then
	
	if [ "$jvm_jmx_remote" == "true" ];then
		echo $jvm_jmx_username" "$jvm_jmx_password >> /etc/jvm.jmx.password
		chmod 600 /etc/jvm.jmx.password
		if [ "$jvm_jmx_role" == "" ]; then
				jvm_jmx_role="readonly"
				#readwrite
		fi
		echo $jvm_jmx_username" "$jvm_jmx_role >> /etc/jvm.jmx.access
		chmod 600 /etc/jvm.jmx.access
	fi
	
	ln -s /root/issp/docker/java/clean-log.sh /usr/bin/clean-log
	ln -s /root/issp/docker/java/run.sh /usr/bin/deploy
	ln -s /root/issp/docker/java/help.sh /usr/bin/h
	ln -s /root/issp/docker/java/log.sh /usr/bin/log
	ln -s /root/issp/docker/java/restart.sh /usr/bin/restart
	ln -s /root/issp/docker/java/status.sh /usr/bin/status
	ln -s /root/issp/docker/java/stop.sh /usr/bin/stop
	ln -s /root/issp/docker/java/stop-kill.sh /usr/bin/stop-kill
fi
/root/issp/docker/java/run.sh
tail -f /var/log/java.log
