#!/bin/bash

wget https://github.com/fatedier/frp/releases/download/v0.48.0/frp_0.48.0_linux_amd64.tar.gz
tar -zxvf frp_0.48.0_linux_amd64.tar.gz
cp frp_0.48.0_linux_amd64/frps /usr/bin

rm -fr frp_0.48.0_linux_amd64
rm -fr frp_0.48.0_linux_amd64.tar.gz

cp frps.service /etc/systemd/system/
mkdir /etc/frps
cp frps.ini /etc/frps

systemctl daemon-reload
systemctl enable frps
systemctl start frps