FROM ros:indigo-ros-core
RUN sudo apt-get -y update
RUN sudo apt-get install -y ros-indigo-turtlebot-rviz-launchers
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["roslaunch", "turtlebot_rviz_launchers", "view_robot.launch"]
