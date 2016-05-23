#!/bin/bash
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
echo Stopping network this may take a minute or two.
weave stop
