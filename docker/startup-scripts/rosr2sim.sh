#!/bin/bash
xhost +
docker run -it --net ros --name r2sim --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="QT_X11_NO_MITSHM=1" --env ROS_HOSTNAME=r2sim --env ROS_MASTER_URI=http://master:11311 frankjoshua/ros-r2sim
