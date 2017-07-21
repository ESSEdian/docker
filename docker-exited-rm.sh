#!/bin/bash
for id in `docker ps -a --filter exited=137 --format "{{.ID}}"`
do
	docker rm $id	
done
for id in `docker ps -a --filter status=created --format "{{.ID}}"`
do
	docker rm $id	
done
