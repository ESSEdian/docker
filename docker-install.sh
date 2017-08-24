#!/bin/bash
systemctl stop firewalld
systemctl disable firewalld
yum install iptables-services -y
yum instal net-tools -y
yum remove docker \
                  docker-common \
                  container-selinux \
                  docker-selinux \
                  docker-engine -y
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
yum-config-manager --disable docker-ce-edge
yum makecache fast
yum install docker-ce -y
