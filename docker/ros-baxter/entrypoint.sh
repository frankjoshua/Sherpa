#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
cd "/root/ros_ws"
./baxter.sh sim &
roslaunch baxter_gazebo baxter_world.launch &
exec "$@"
