#!/bin/bash
xhost +
docker run -it \
  --privileged \
  --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  -e ROS_MASTER_URI=$ROS_MASTER_URI \
  --net host \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  frankjoshua/ros-kinect $@
