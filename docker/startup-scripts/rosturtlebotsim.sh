#!/bin/bash
docker run -it  --net ros --name turtlebotsim --env ROS_HOSTNAME=turtlebotsim --env ROS_MASTER_URI=http://master:11311 frankjoshua/ros-turtlebot-sim
