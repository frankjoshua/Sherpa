FROM ros:indigo-ros-core
RUN sudo apt-get -y update
RUN sudo apt-get install -y ros-indigo-turtlebot-gazebo
CMD /ros_entrypoint.sh roslaunch turtlebot_gazebo turtlebot_world.launch
