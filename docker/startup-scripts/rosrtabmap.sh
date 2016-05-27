#!/bin/bash
eval $(weave env)
xhost +
docker run -it --name rtabmap --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="QT_X11_NO_MITSHM=1" --env ROS_HOSTNAME=rtabmap --env ROS_MASTER_URI=http://master:11311 frankjoshua/ros-rtabmap $@
