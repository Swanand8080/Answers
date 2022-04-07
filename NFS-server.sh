#!/bin/bash
yum install nfs-utils -y
mkdir /nfsdata
echo "/nfsdata *(rw,sync)" > /etc/exports
systemctl restart nfs-server
systemctl enable nfs-server
exportfs -r

