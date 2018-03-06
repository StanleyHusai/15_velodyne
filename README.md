# 15_velodyne
Customized Deriver for Velodyne 32

## Package summary

*15_velodyne* is a customized ROS node used to collect data from Velodyne32.

## Running the demo

runVelodyne.sh

More importantly, you may need to change some of the path in the .sh files.
```
Output:
--3D point cloud with topic Velodyne_points_0
```
## License

*15_velodyne* is available under BSD license.
contact: wenwsrobo@gmail.com



## Appendix:
Install Driver

Install the Velodyne stack from the repositories by running
sudo apt-get install ros-jade-velodyne

||   Also, the driver package could be download from https://github.com/ros-drivers/velodyne, later, you should catkin_make this package.

Configure your computer's wire internet connection as following picture




Connect to the LIDAR

    Power the LIDAR via the included adapter
    Connect the LIDAR to an Ethernet port on your computer.
    Statically assign an IP to this port in the 192.168.3.x range.

sudo ifconfig eth0 192.168.3.100

    Add a static route to the LIDAR's IP address. The IP address can be found on the CD case which was included with the LIDAR.

sudo route add 192.168.3.255 eth0
the address of velodyne was provided by the velodyne company in the product manual.
View Data

    Convert the provided calibration data from the standard Velodyne XML format to the node's YAML format. It is usually kept in the "DSR Viewer" folder on the CD which was included with the LIDAR. this calibration file was provided by velodyne company. 

rosrun velodyne_pointcloud gen_calibration.py 32db.xml

    Launch the provided pointcloud generation launchfile, specifying the absolute path of the calibration file that was generated in the previous step.

roslaunch velodyne_pointcloud 32e_points.launch calibration:=/home/user/32db.yaml

    Launch rviz, with the "velodyne" frame as the fixed frame.

rosrun rviz rviz -f velodyne

    In the "displays" panel, click "Add", then select "Point Cloud2", then press "OK".
    In the "Topic" field of the new "Point Cloud2" tab, enter "/velodyne_points"


Velodyne data in rviz
