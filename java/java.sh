#!/bin/bash
cd /$project
if [ "$jvm_jmx" == "true" ];then
	java -Dcom.sun.management.jmxremote.authenticate=true -Dcom.sun.management.jmxremote.port=$jvm_jmx_port -Dcom.sun.management.jmxremote.access.file=/etc/jvm.jmx.access -Dcom.sun.management.jmxremote.password.file=/etc/jvm.jmx.password -Dcom.sun.management.jmxremote.ssl=false -Djava.rmi.server.hostname=$jvm_jmx_hostname -jar -Xms"$jvm_Xms" -Xmx"$jvm_Xmx" $projectPshellPre `ls | grep "jar$"` $projectPshellPos &
else
	java -jar -Xms"$jvm_Xms" -Xmx"$jvm_Xmx" $projectPshellPre `ls | grep "jar$"` $projectPshellPos &
fi
