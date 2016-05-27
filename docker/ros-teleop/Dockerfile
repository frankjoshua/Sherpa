FROM ros:jade-ros-base
RUN sudo apt-get -y update
COPY ./teleop.py /teleop.py
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["/teleop.py"]
