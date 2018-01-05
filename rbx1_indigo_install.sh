#!/bin/sh

# Install the prerequisites for the ROS By Example code, Volume 1

sudo apt-get install ros-indigo-turtlebot-bringup \
ros-indigo-turtlebot-create-desktop ros-indigo-openni-* \
ros-indigo-openni2-* ros-indigo-freenect-* ros-indigo-usb-cam \
ros-indigo-laser-* ros-indigo-hokuyo-node \
ros-indigo-audio-common gstreamer0.10-pocketsphinx \
ros-indigo-pocketsphinx ros-indigo-slam-gmapping \
ros-indigo-joystick-drivers python-rosinstall \
ros-indigo-orocos-kdl ros-indigo-python-orocos-kdl \
python-setuptools ros-indigo-dynamixel-motor-* \
libopencv-dev python-opencv ros-indigo-vision-opencv \
ros-indigo-depthimage-to-laserscan ros-indigo-arbotix-* \
ros-indigo-turtlebot-teleop ros-indigo-move-base \
ros-indigo-map-server ros-indigo-fake-localization \
ros-indigo-amcl git subversion mercurial

mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws
catkin_make

cd ~/catkin_ws/src
git clone https://github.com/pirobot/rbx1.git
cd rbx1
git checkout indigo-devel
cd ~/catkin_ws
catkin_make
source ~/catkin_ws/devel/setup.bash
rospack profile
