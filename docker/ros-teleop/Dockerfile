FROM ros:indigo-ros-base
RUN sudo apt-get -y update
RUN sudo apt-get install -y ros-indigo-turtlebot-apps
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["roslaunch", "turtlebot_teleop", "keyboard_teleop.launch"]
