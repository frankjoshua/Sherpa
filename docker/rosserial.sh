#!/bin/bash
docker run -itd --privileged --net ros --name serial --device=/dev/ttyACM0 --env ROS_HOSTNAME=serial --env ROS_MASTER_URI=http://master:11311 frankjoshua/ros-serial
