#!/bin/bash
lasLine=`awk 'NF{a=$0}END{print a}' /root/.bashrc`
if [ $lasLine != "alias h=\"/root/issp/docker/node/help.sh\"" ];then
	echo "alias status=\"/root/issp/docker/node/status.sh\"" >> /root/.bashrc
	echo "alias stop=\"/root/issp/docker/node/stop.sh\"" >> /root/.bashrc
	echo "alias stop-kill=\"/root/issp/docker/node/stop-kill.sh\"" >> /root/.bashrc
	echo "alias restart=\"/root/issp/docker/node/restart.sh\"" >> /root/.bashrc
	echo "alias deploy=\"/root/issp/docker/node/run.sh\"" >> /root/.bashrc
	echo "alias log=\"/root/issp/docker/node/log.sh\"" >> /root/.bashrc
	echo "alias clean-log=\"/root/issp/docker/node/clean-log.sh\"" >> /root/.bashrc
	echo "alias h=\"/root/issp/docker/node/help.sh\"" >> /root/.bashrc
	source /root/.bashrc
fi
/root/issp/gitlab-webhook/start.sh ; /root/issp/docker/node/run.sh
tail -f /var/log/node.log
