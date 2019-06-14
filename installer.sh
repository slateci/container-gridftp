#!/bin/bash -e

rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -Uvh https://repo.opensciencegrid.org/osg/3.4/osg-3.4-el7-release-latest.rpm
yum install -y osg-gridftp osg-ca-certs yum-plugin-priorities gfal2-all gfal2-util globus-proxy-utils-7.1-1.el7.x86_64
useradd gridftp
mkdir -p /home/gridftp/.globus/
mkdir -p /scratch
chown gridftp:gridftp /scratch
echo -e "#Uncomment and modify for firewalls\nexport GLOBUS_TCP_PORT_RANGE=50000,50001\n#export GLOBUS_TCP_SOURCE_RANGE=min,max" > /etc/sysconfig/globus-gridftp-server
