#!/usr/bin/env bash
cd /home/wenws/15_velodyne
source /home/wenws/15_velodyne/devel/setup.bash
roslaunch velodyne_pointcloud 32e_points.launch calibration:=/home/wenws/15_velodyne/src/velodyne/velodyne_pointcloud/params/32db.yaml


