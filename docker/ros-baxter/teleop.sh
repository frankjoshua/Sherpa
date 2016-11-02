#!/bin/bash

rosrun baxter_tools enable_robot.py -e
rosrun baxter_examples joint_position_keyboard.py
