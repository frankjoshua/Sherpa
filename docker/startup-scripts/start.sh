#!/bin/bash
./connect_net.sh $@
./rosmaster.sh
./rosbash.sh
