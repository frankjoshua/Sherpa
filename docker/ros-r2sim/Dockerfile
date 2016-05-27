FROM ros:indigo-ros-core
RUN sudo apt-get -y update
RUN sudo apt-get -y install ros-indigo-ros-control
RUN sudo apt-get -y install ros-indigo-gazebo-ros-control
RUN sudo apt-get -y install ros-indigo-joint-state-controller
RUN sudo apt-get -y install ros-indigo-effort-controllers
RUN sudo apt-get -y install ros-indigo-joint-trajectory-controller
RUN sudo apt-get -y install ros-indigo-moveit*
RUN sudo apt-get -y install ros-indigo-octomap*
RUN sudo apt-get -y install ros-indigo-object-recognition-*
RUN sudo mkdir -p ~/chessbot/src && cd ~/chessbot/src && git clone --verbose -b indigo https://bitbucket.org/nasa_ros_pkg/nasa_r2_simulator.git && git clone --verbose -b indigo https://bitbucket.org/nasa_ros_pkg/nasa_r2_common.git
RUN sudo rm /bin/sh && ln -s /bin/bash /bin/sh
RUN sudo -s && source /opt/ros/indigo/setup.bash && cd ~/chessbot && /opt/ros/indigo/bin/catkin_make
COPY ./gazebo.sh /gazebo.sh 
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["/gazebo.sh"]
