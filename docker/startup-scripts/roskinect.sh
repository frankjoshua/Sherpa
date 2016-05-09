#!/bin/bash
xhost +
sudo docker run -dit --privileged --net weave --name kinect -v /dev:/dev --env ROS_HOSTNAME=kinect --env="DISPLAY" --volume="$HOME:$HOME" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="QT_X11_NO_MITSHM=1" --env ROS_MASTER_URI=http://master:11311 frankjoshua/${DOCKER_PREFIX}ros-kinect $@
