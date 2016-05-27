FROM ros:indigo-ros-core
RUN sudo apt-get -y update
RUN sudo apt-get install -y ros-indigo-rosserial-arduino
RUN sudo apt-get install -y ros-indigo-rosserial
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["rosrun", "rosserial_python", "serial_node.py", "/dev/ttyACM0"]
