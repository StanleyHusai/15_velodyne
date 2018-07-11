# 15_velodyne
Customized Deriver for Velodyne 32

## Package summary

*15_velodyne* is a customized ROS node used to collect data from Velodyne32.

## Running the demo
$ sudo apt-get install ros-jade-velodyne
change "cd /home/wenws/15_velodyne" to "cd /home/yourpcname/15_velodyne"
change "source /home/yourpcname/15_velodyne/devel/setup.bash" to "source /home/yourpcname/15_velodyne/devel/setup.bash"
yourpcname is the name of your ubuntu system
$ runVelodyne.sh

```
Output:
--3D point cloud with topic Velodyne_points_0
```

## Appendix
Connect to the LIDAR

    1. Power the LIDAR via the included adapter
    2. Connect the LIDAR to an Ethernet port on your computer.
    3. Generate a connection with configuration as follows:
        Address: 192.168.3.255
        Netmask: 255.255.255.0
        Gateway: 192.168.1.1
    
