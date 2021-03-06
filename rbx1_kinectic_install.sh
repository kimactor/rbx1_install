#!/bin/sh

# Install the prerequisites for the ROS By Example code, Volume 1

sudo apt-get install ros-kinetic-turtlebot-bringup \
ros-kinetic-turtlebot-create ros-kinetic-openni-* \
ros-kinetic-openni2-* ros-kinetic-freenect-* ros-kinetic-usb-cam \
ros-kinetic-laser-* ros-kinetic-hokuyo-node \
ros-kinetic-audio-common gstreamer0.10-pocketsphinx \
ros-kinetic-pocketsphinx ros-kinetic-slam-gmapping \
ros-kinetic-joystick-drivers python-rosinstall \
ros-kinetic-orocos-kdl ros-kinetic-python-orocos-kdl \
python-setuptools ros-kinetic-dynamixel-motor \
libopencv-dev python-opencv ros-kinetic-vision-opencv \
ros-kinetic-depthimage-to-laserscan ros-kinetic-arbotix-* \
ros-kinetic-turtlebot-teleop ros-kinetic-move-base \
ros-kinetic-map-server ros-kinetic-fake-localization \
ros-kinetic-amcl git subversion mercurial

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws
catkin_make

cd ~/catkin_ws/src
git clone https://github.com/pirobot/rbx1.git
cd rbx1
git checkout kinectic-devel
cd ~/catkin_ws
catkin_make
source ~/catkin_ws/devel/setup.bash
rospack profile
