#!/bin/bash
lasLine=`awk 'NF{a=$0}END{print a}' /root/.bashrc`
#if [ $lasLine != "alias deploy=\"/root/issp/docker/node/run.sh\"" ];then
echo "alias status=\"/root/issp/docker/node/status.sh\"" >> /root/.bashrc
echo "alias stop=\"/root/issp/docker/node/stop.sh\"" >> /root/.bashrc
echo "alias restart=\"/root/issp/docker/node/restart.sh\"" >> /root/.bashrc
echo "alias deploy=\"/root/issp/docker/node/run.sh\"" >> /root/.bashrc
echo "alias log=\"/root/issp/docker/node/log.sh\"" >> /root/.bashrc
#fi
#source /root/.bashrc
/root/issp/gitlab-webhook/start.sh ; /root/issp/docker/node/run.sh
