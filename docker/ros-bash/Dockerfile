FROM ros:indigo-robot
RUN sudo apt-get -y update
RUN sudo apt-get install -y gedit
RUN sudo apt-get -y install ros-indigo-urdf-tutorial
RUN sudo apt-get -y install cmake python-catkin-pkg python-empy python-nose python-setuptools libgtest-dev build-essential
RUN sudo apt-get install -y ros-indigo-gazebo-ros
RUN sudo apt-get install -y ros-indigo-gazebo-plugins
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
