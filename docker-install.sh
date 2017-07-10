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
yum install -y yum-utils
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
yum-config-manager --enable docker-ce-edge
yum makecache fast
yum install docker-ce-selinux-17.03.0.ce-1.el7.centos.noarch -y
