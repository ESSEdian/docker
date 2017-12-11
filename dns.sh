#!/bin/bash
docker run \
	--name dnsmasq \
	-d \
	-p 53:53/udp \
	-p 8080:8080 \
	-v /opt/dnsmasq.conf:/etc/dnsmasq.conf \
	-v /root/docker/dns:/root/dns \
	--log-opt "max-size=100m" \
	-e "HTTP_USER=admin" \
	-e "HTTP_PASS=admin" \
	--restart always \
	jpillora/dnsmasq
