#!/bin/bash
cd /$project
java -jar $projectPshellPre `ls | grep "jar$"` $projectPshellPos &
