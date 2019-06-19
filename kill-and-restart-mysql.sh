#!/bin/sh

for exitedDockerContainerId in `docker ps -q --filter status=exited --filter name=mysql`
do
	docker start $exitedDockerContainerId
done