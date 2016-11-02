#!/bin/bash

repos=(
"frankjoshua/ros-master"
"frankjoshua/ros-bash"
"frankjoshua/ros-rviz"
"frankjoshua/ros-gazebo"
"frankjoshua/ros-teleop"
"frankjoshua/ros-turtlebot-sim"
"frankjoshua/ros-serial"
"frankjoshua/ros-kinect"
"frankjoshua/ros-baxter"
);

for repo in "${repos[@]}"
do
    docker push $repo
done
