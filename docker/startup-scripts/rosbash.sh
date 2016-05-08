#!/bin/bash
xhost +
#generate random name
UUID=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 3 | head -n 1)
nvidia-docker run -it --privileged --net ros --name ros-bash-$UUID --env="DISPLAY" --volume="$HOME:$HOME" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="QT_X11_NO_MITSHM=1" --env ROS_HOSTNAME=ros-bash-$UUID --env ROS_MASTER_URI=http://master:11311 frankjoshua/ros-bash
