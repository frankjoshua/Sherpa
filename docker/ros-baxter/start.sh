#!/bin/bash
xhost +
docker run -it \
  --privileged \
  --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  -e your_ip=127.0.0.1 \
  -e baxter_hostname=baxter.local \
  frankjoshua/ros-baxter $@
