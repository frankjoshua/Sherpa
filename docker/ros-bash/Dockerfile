FROM ros:jade-robot
RUN sudo apt-get -y update
RUN sudo apt-get install -y gedit
RUN sudo apt-get -y install ros-jade-urdf-tutorial
RUN sudo apt-get -y install cmake python-catkin-pkg python-empy python-nose python-setuptools libgtest-dev build-essential
RUN sudo apt-get install -y ros-jade-gazebo-ros
RUN sudo apt-get install -y ros-jade-gazebo-plugins
RUN sudo apt-get install -y ros-jade-map-server
RUN sudo apt-get install -y ros-jade-desktop-full
RUN sudo apt-get install -y ros-jade-gmapping
RUN sudo apt-get install -y ros-jade-amcl
RUN sudo apt-get install -y ros-jade-move-base
RUN sudo apt-get install -y gazebo5
RUN sudo apt-get install -y ros-jade-depthimage-to-laserscan
RUN sudo apt-get install -y ros-jade-hector-slam \
ros-jade-rtabmap-ros
# nvidia-docker hooks
LABEL com.nvidia.volumes.needed="nvidia_driver"
ENV PATH /usr/local/nvidia/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}
RUN sudo apt-get install -y mesa-utils
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
