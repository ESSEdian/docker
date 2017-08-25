#!/bin/bash
lasLine=`awk 'NF{a=$0}END{print a}' /root/.bashrc`
if [ $lasLine != "alias deploy=\"pkill java ; /root/docker/java/run.sh\"" ];then
	echo "alias status=\"/root/docker/java/status.sh\"" >> /root/.bashrc
	echo "alias stop=\"/root/docker/java/stop.sh\"" >> /root/.bashrc
	echo "alias restart=\"pkill java ; /root/docker/java/restart.sh\"" >> /root/.bashrc
	echo "alias deploy=\"pkill java ; /root/docker/java/run.sh\"" >> /root/.bashrc
fi
source /root/.bashrc
/root/docker/java/run.sh && sleep 1d
