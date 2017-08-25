#!/bin/bash
cd $project
java -jar `ls | grep *.jar` &
