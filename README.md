# 15_velodyne

Customized Deriver for Velodyne Lidar 32E

## Package summary

15_velodyne is a customized ROS node used to collect data from Velodyne Lidar 32E.

## Running the demo

$ git clone https://github.com/StanleyHusai/15_velodyne.git

delete folders 'build', 'devel' and 'src'
extract src_velodyne.tar.gz
compile

Give execute permission to your script in /15_velodyne
$ chmod +x runVelodyne.sh
$ ./runVelodyne.sh

Output:
--3D point cloud with topic velodyne_points

## Appendix

Connect to the LIDAR

1. Power the LIDAR via the included adapter
2. Connect the LIDAR to an Ethernet port on your computer.
3. Generate a connection with configuration as follows:
    Address: 192.168.3.255
    Netmask: 255.255.255.0
    Gateway: 192.168.1.1
