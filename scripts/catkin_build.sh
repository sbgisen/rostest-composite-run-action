#!/bin/bash

source /opt/ros/${1}/setup.bash
catkin clean -y
catkin config --extend /opt/ros/${1}
catkin config --no-blacklist
catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release
catkin build
