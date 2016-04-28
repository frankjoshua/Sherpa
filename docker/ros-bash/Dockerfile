FROM ros:indigo-robot
RUN sudo apt-get -y update
RUN sudo apt-get install -y gedit
RUN sudo apt-get -y install ros-indigo-urdf-tutorial
RUN sudo apt-get -y install cmake python-catkin-pkg python-empy python-nose python-setuptools libgtest-dev build-essential
RUN sudo apt-get install -y ros-indigo-gazebo-ros
RUN sudo apt-get install -y ros-indigo-gazebo-plugins
RUN sudo apt-get install -y ros-indigo-map-server
RUN sudo apt-get install -y ros-indigo-desktop-full
RUN sudo apt-get install -y ros-indigo-gmapping
RUN sudo apt-get install -y ros-indigo-amcl
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
