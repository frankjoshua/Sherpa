FROM ros:indigo-ros-core
RUN sudo apt-get -y update
RUN sudo apt-get install -y libfreenect-dev
RUN sudo apt-get install -y ros-indigo-openni-*
RUN sudo apt-get install -y ros-indigo-freenect-*
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["roslaunch", "freenect_launch", "freenect.launch", "depth_registration:=true"]
