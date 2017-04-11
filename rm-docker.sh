#!/bin/bash
docker stop `docker ps -a | grep -v java | awk '{print $1}'`
docker rm `docker ps -a | grep Exited | awk '{print $1}'`
sudo docker run -d --privileged -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/rancher:/var/lib/rancher rancher/agent:v1.2.1 http://45.32.38.210:8080/v1/scripts/79578F2CC50344FB776D:1483142400000:lTyVH6kebwBnAGdGZS2artrVRP8
