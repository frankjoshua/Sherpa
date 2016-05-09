#!/bin/bash
eval $(weave env)
docker run -d -it -p 11311:11311 --name master frankjoshua/${DOCKER_PREFIX}ros-master $@
