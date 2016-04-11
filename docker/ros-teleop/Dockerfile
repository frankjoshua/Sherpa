FROM osrf/ros:indigo-desktop-full
RUN apt-get -y update
RUN apt-get install -y vim 
RUN sudo apt-get install -y libfreenect-dev
RUN sudo apt-get install -y ros-indigo-openni-*
RUN sudo apt-get install -y ros-indigo-freenect-*
RUN sudo apt-get install -y ros-indigo-turtlebot-gazebo
RUN sudo apt-get install -y ros-indigo-turtlebot-apps
RUN sudo apt-get install -y ros-indigo-turtlebot-rviz-launchers
RUN sudo apt-get install -y ros-indigo-rosserial-arduino
RUN sudo apt-get install -y ros-indigo-rosserial
CMD /ros_entrypoint.sh bash
