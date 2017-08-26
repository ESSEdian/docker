#!/bin/bash
cd $project
pkill java ; java -jar `ls | grep *.jar` &
