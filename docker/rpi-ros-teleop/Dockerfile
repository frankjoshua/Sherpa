FROM pablogn/rpi-ros-core-indigo
RUN sudo apt-get -y update
RUN sudo apt-get install -y ros-indigo-turtlebot-apps
EXPOSE 11311
# setup entrypoint
ENV ROS_DISTRO indigo
COPY ./ros_entrypoint.sh /
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["roslaunch", "turtlebot_teleop", "keyboard_teleop.launch"]
