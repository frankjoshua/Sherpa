#!/bin/bash
docker run -d -it -p 11311:11311 --net weave --name master frankjoshua/${DOCKER_PREFIX}ros-master $@
