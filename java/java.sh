#!/bin/bash
cd /$project
java -jar -Xms400m -Xmx400m $projectPshellPre `ls | grep "jar$"` $projectPshellPos &
