#!/bin/bash
cd /$project
jmxPort=3333
if [ "$1" != "" ];then
	jmxPort=$1
fi
java \ 
 -Dcom.sun.management.jmxremote.authenticate=true \
 -Dcom.sun.management.jmxremote.port=$jmxPort \
 -Dcom.sun.management.jmxremote.access.file=jmxremote.access \
 -Dcom.sun.management.jmxremote.password.file=jmxremote.password \
 -Dcom.sun.management.jmxremote.ssl=false \
 -Djava.rmi.server.hostname=test.domain.dounine.com \
 -jar -Xms400m -Xmx400m $projectPshellPre `ls | grep "jar$"` $projectPshellPos &
