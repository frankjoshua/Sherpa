#!/bin/bash
docker network create ros
docker run -d -it -p 11311:11311 --net ros --name master frankjoshua/ros-master
