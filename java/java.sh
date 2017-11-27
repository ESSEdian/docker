#!/bin/bash
cd /$project
jmxPort=3333
if [ "$1" != "" ];then
	jmxPort=$1
fi
java -Dcom.sun.management.jmxremote.authenticate=true -Dcom.sun.management.jmxremote.port=$jmxPort -Dcom.sun.management.jmxremote.access.file=/root/issp/docker/java/jmxremote.access -Dcom.sun.management.jmxremote.password.file=/root/issp/docker/java/jmxremote.password -Dcom.sun.management.jmxremote.ssl=false -Djava.rmi.server.hostname=134.host.bjike.com -jar -Xms200m -Xmx200m $projectPshellPre `ls | grep "jar$"` $projectPshellPos &
