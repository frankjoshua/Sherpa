#!/bin/bash
$SHERPA_PATH/connect_net.sh $@
$SHERPA_PATH/rosmaster.sh
$SHERPA_PATH/rosbash.sh
