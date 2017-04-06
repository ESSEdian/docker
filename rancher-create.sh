#!/bin/bash
docker run -d --restart=unless-stopped --memory=1G --memory-swap=1G -p 8080:8080 -v /root/storage/rancher/db:/var/lib/mysql -e JAVA_OPTS="-Xms512m -Xmx1024m" rancher/server
