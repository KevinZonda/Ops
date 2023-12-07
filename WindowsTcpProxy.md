netsh interface portproxy add v4tov4  listenaddress=127.0.0.1 listenport=9000 connectaddress=TargetIp connectport=TargetPort

netsh interface  portproxy show  v4tov4

netsh interface  portproxy delete v4tov4 listenaddress=172.16.0.4 listenport=8080
