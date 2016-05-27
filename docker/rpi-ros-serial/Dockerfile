FROM pablogn/rpi-ros-core-indigo
RUN sudo apt-get -y update
RUN sudo apt-get install -y ros-indigo-rosserial-arduino
RUN sudo apt-get install -y ros-indigo-rosserial
EXPOSE 11311
# setup entrypoint
ENV ROS_DISTRO indigo
COPY ./ros_entrypoint.sh /
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["rosrun", "rosserial_python", "serial_node.py", "/dev/ttyACM0"]
