#!/bin/bash
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net --recv-key 0xB01FA116
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y ros-indigo-gazebo-ros
sudo apt-get -y install ros-indigo-urdf-tutorial
sudo apt-get -y install cmake python-catkin-pkg python-empy python-nose python-setuptools libgtest-dev build-essential
sudo apt-get install -y ros-indigo-gazebo-plugins
sudo apt-get install -y ros-indigo-map-server
sudo apt-get install -y ros-indigo-desktop-full
sudo apt-get install -y ros-indigo-gmapping
sudo apt-get install -y ros-indigo-amcl
sudo apt-get install -y ros-indigo-move-base
sudo apt-get install -y gazebo5
sudo apt-get install -y ros-indigo-depthimage-to-laserscan
sudo apt-get install -y ros-indigo-hector-slam ros-indigo-rtabmap-ros
sudo apt-get install -y python-rosinstall
sudo rosdep init
rosdep update
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
source ~/.bashrc
