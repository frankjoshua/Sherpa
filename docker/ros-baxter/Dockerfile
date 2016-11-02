FROM ros:indigo-robot

#Use bash instead of sh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

#Install required packages
RUN sudo apt-get update -y && \
  sudo apt-get install -y build-essential git-core python-argparse python-wstool python-vcstools python-rosdep ros-indigo-control-msgs ros-indigo-joystick-drivers

#Setup catkin workspace
RUN mkdir -p /root/ros_ws/src && \
  source /opt/ros/indigo/setup.bash && \
  cd /root/ros_ws && \
  catkin_make && \
  catkin_make install

RUN sudo apt-get install -y gazebo2 ros-indigo-qt-build ros-indigo-driver-common ros-indigo-gazebo-ros-control ros-indigo-gazebo-ros-pkgs ros-indigo-ros-control ros-indigo-control-toolbox ros-indigo-realtime-tools ros-indigo-ros-controllers ros-indigo-xacro python-wstool ros-indigo-tf-conversions ros-indigo-kdl-parser
RUN sudo apt-get install -y ros-indigo-baxter-sdk ros-indigo-baxter-simulator

COPY ./baxter.sh /root/ros_ws
COPY ./entrypoint.sh /
COPY ./wobble.sh /
COPY ./teleop.sh /

ENV your_ip 127.0.0.1
ENV baxter_hostname baxterserial.local

ENTRYPOINT ["/entrypoint.sh"]
