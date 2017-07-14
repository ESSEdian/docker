#!/bin/bash
docker run -d -p 9000:9000 -v /root/storage/portainer/data:/data -v /var/run/docker.sock:/var/run/docker.sock --name portainer portainer/portainer
