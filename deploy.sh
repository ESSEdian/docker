#!/bin/bash
lasLine=`awk 'NF{a=$0}END{print a}' /root/.bashrc`
if [ $lasLine != "alias h=\"/root/issp/docker/java/help.sh\"" ];then
	echo "alias status=\"/root/issp/docker/java/status.sh\"" >> /root/.bashrc
	echo "alias stop=\"/root/issp/docker/java/stop.sh\"" >> /root/.bashrc
	echo "alias stop-kill=\"/root/issp/docker/java/stop-kill.sh\"" >> /root/.bashrc
	echo "alias restart=\"/root/issp/docker/java/restart.sh\"" >> /root/.bashrc
	echo "alias deploy=\"/root/issp/docker/java/run.sh\"" >> /root/.bashrc
	echo "alias log=\"/root/issp/docker/java/log.sh\"" >> /root/.bashrc
	echo "alias clean-log=\"/root/issp/docker/java/clean-log.sh\"" >> /root/.bashrc
	echo "alias h=\"/root/issp/docker/java/help.sh\"" >> /root/.bashrc
	source /root/.bashrc
fi
/root/issp/gitlab-webhook/start.sh ; /root/issp/docker/java/run.sh
tail -f /var/log/java.log
