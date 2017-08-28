#!/bin/bash
lasLine=`awk 'NF{a=$0}END{print a}' /root/.bashrc`
#if [ $lasLine != "alias deploy=\"/root/issp/docker/java/run.sh\"" ];then
echo "alias status=\"/root/issp/docker/java/status.sh\"" >> /root/.bashrc
echo "alias stop=\"/root/issp/docker/java/stop.sh\"" >> /root/.bashrc
echo "alias restart=\"/root/issp/docker/java/restart.sh\"" >> /root/.bashrc
echo "alias deploy=\"/root/issp/docker/java/run.sh\"" >> /root/.bashrc
echo "alias log=\"/root/issp/docker/java/log.sh\"" >> /root/.bashrc
#fi
source /root/.bashrc
/root/issp/gitlab-webhook/start.sh ; /root/issp/docker/java/run.sh
