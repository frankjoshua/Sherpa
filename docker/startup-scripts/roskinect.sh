#!/bin/bash
sudo docker run -dit --privileged --net ros --name kinect -v /dev/bus/usb:/dev/bus/usb --env ROS_HOSTNAME=kinect --env ROS_MASTER_URI=http://master:11311 frankjoshua/${DOCKER_PREFIX}ros-kinect $@
