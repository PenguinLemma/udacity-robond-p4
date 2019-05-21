#!/usr/bin/env sh
# To set some environment variables that are necessary to use
# ros commands and use launch files in this project

# Set the environment variables that catkin_build generates
source devel/setup.sh
# In case of using ROS Melodic, the following command is also necessary,
# due to: https://github.com/ros-visualization/rviz/issues/1249
export LC_NUMERIC="en_US.UTF-8"
# Add path where models in the world can be found
export GAZEBO_MODEL_PATH=$PWD/src/my_robot/worlds/model:~/.gazebo/models:$GAZEBO_MODEL_PATH
# Add path where map will be saved
export MY_ROBOT_MAP_PATH=$PWD/src/my_robot/maps
# if map folder doesn't exist, we create it
[ -d $MY_ROBOT_MAP_PATH ] || mkdir $MY_ROBOT_MAP_PATH
