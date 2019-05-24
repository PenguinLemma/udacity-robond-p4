[![Udacity - Robotics NanoDegree Program](https://s3-us-west-1.amazonaws.com/udacity-robotics/Extra+Images/RoboND_flag.png)](https://www.udacity.com/robotics)

# udacity-robond-p4
Map My World - Project 4 of the Udacity Robotics Software Engineer Nanodegree

## Description

## Instructions

1. Clone the repository

```git
git clone https://github.com/PenguinLemma/udacity-robond-p4.git $PATH_TO_PARENT_DIR/penguin_lemma_slam
```

2. Build catkin workspace and set env variables

```shell
cd $PATH_TO_PARENT_DIR/penguin_lemma_slam
catkin_make
source set_env_var_$VERSION.$SHELL
```
where $SHELL can be "sh", "bash" or "zsh" and $VERSION can be "pre_melodic" or "melodic".

3. Launch the `world` containing the robot and RViz
```shell
roslaunch slamming_robot world.launch
```
4. Launch the `teleop` node
```shell
cd $PATH_TO_PARENT_DIR/penguin_lemma_slam
source set_env_var_$VERSION.$SHELL
roslaunch slamming_robot teleop.launch
```
5. Launch the `mapping` node
First setup the new terminal:
```shell
cd $PATH_TO_PARENT_DIR/penguin_lemma_slam
source set_env_var_$VERSION.$SHELL
```
Then launch the `mapping` node itself:
```shell
roslaunch slamming_robot mapping.launch
```
In this case the database containing the map will be saved in `$SLAM_MAP_PATH/rtabmap.db`, where `$SLAM_MAP_PATH` is an environment variable set in the scripts `set_env_var_$VERSION.$SHELL`. Its default value is `$PATH_TO_PARENT_DIR/penguin_lemma_slam/src/slamming_robot/maps`. `maps` subdirectory will be created if it doesn't exist already (when sourcing the scripts to set environment variables). That means that with Thatt default call to launch the `mapping` node, the resulting map will be stored as:
```
$PATH_TO_PARENT_DIR/penguin_lemma_slam/src/slamming_robot/maps/rtabmap.db
```

To choose a different location, use the following call:
```shell
roslaunch slamming_robot mapping.launch database_path:=$YOUR_CHOSEN_DIR
```
and the map will be saved in `$YOUR_CHOSEN_DIR/rtabmap.db`.

6. Navigate the building
Select the terminal where you launched the `teleop` node and use the keys to command the robot around. Controls were displayed in the terminal when the node was launched.

Since the building is quite big, you might want to choose a small part of it. Do three cycles around that part and you should get a good map at the end!

7. Check the results
You can see realtime feature detection, loop closures and other relevant information to the mapping process as you go: `RTAB-Map* [ROS]` window, as `rtabmapviz` GUI is launched with the `mapping` node).

You can see the final result in much more detail using `rtabmap-databaseViewer`. For that, `CTRL+C` all three active terminals and in any of them, do:
```shell
rtabmap-databaseViewer $PATH_TO_RESULTING_MAP
```
where `$PATH_TO_RESULTING_MAP` was described in point `5`.


## License
Original version of the license of this repository can be found here:
https://gist.github.com/laramartin/7796d730bba8cf689f628d9b011e91d8
