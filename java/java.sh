#!/bin/bash
cd /$project
java \ 
 -Dcom.sun.management.jmxremote.authenticate=true \
 -Dcom.sun.management.jmxremote.port=3333 \
 -Dcom.sun.management.jmxremote.access.file=jmxremote.access \
 -Dcom.sun.management.jmxremote.password.file=jmxremote.password \
 -Dcom.sun.management.jmxremote.ssl=false \
 -Djava.rmi.server.hostname=test.domain.dounine.com \
 -jar -Xms400m -Xmx400m $projectPshellPre `ls | grep "jar$"` $projectPshellPos &
