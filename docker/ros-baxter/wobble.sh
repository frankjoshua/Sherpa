#!/bin/bash

rosrun baxter_tools enable_robot.py -e
rosrun baxter_examples joint_velocity_wobbler.py
