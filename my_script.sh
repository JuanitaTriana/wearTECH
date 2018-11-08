#!/bin/bash

source ~/catkin_ws/devel/setup.bash

# roscore &
# rosrun ros_myo myo-rawNode.py

echo "Saving sata from myo: "
python myo_con.py &
echo "Saving data from phone"
nc 10.214.237.115 49466 >  mylog_test.csv 
