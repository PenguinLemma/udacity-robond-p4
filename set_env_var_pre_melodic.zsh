#!/usr/bin/env zsh
# To set some environment variables that are necessary to use
# ros commands and use launch files in this project

# Set the environment variables that catkin_build generates
source devel/setup.zsh
# Add path where models in the world can be found
export GAZEBO_MODEL_PATH=$PWD/src/my_robot/worlds/model:~/.gazebo/models:$GAZEBO_MODEL_PATH
# Add path where map will be saved
export MY_ROBOR_MAP_PATH=$PWD/src/my_robot/maps
# if map folder doesn't exist, we create it
[ -d $MY_ROBOR_MAP_PATH ] || mkdir $MY_ROBOR_MAP_PATH
