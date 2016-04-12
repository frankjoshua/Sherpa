#!/bin/bash
xhost +
docker run -it --net ros --name gazebo --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="QT_X11_NO_MITSHM=1" --env ROS_HOSTNAME=gazebo --env ROS_MASTER_URI=http://master:11311 frankjoshua/ros-gazebo ./ros_entrypoint.sh roslaunch turtlebot_gazebo turtlebot_world.launch
