source ~/ve/py38/bin/activate
export OFFWORLD_ROOT=/home/dsun/offworld
export OFFWORLD_HOME=/home/dsun
source /opt/ros/noetic/setup.bash

# SRM Path
export PYTHONPATH=/opt/ros/noetic/lib/python3/dist-packages:/home/offworld/swarm-robotic-mining/dev_ws/src:/home/offworld/swarm-robotic-mining/dev_ws/src:/home/dsun/swarm-robotic-mining/dev_ws/src:/home/dsun/swarm-robotic-mining/dev_ws/src/firmware/bot_firmware_apis:/home/dsun/swarm-robotic-mining/dev_ws/src/bot_mobilebase_api/build:/home/dsun/swarm-robotic-mining/dev_ws/src/bot_overseer_api:/home/dsun/swarm-robotic-mining/dev_ws/src/bot_database:/home/dsun/swarm-robotic-mining/dev_ws/src/bot_derived_tm:/home/dsun/swarm-robotic-mining/dev_ws/src/bot_events:/home/dsun/swarm-robotic-mining/dev_ws/src/offworld-ur-interface:/home/dsun/offworld/swarm-robotic-mining/dev_ws/src:/home/dsun/offworld/swarm-robotic-mining/dev_ws/src/firmware/bot_firmware_apis:/home/dsun/offworld/swarm-robotic-mining/dev_ws/src/bot_mobilebase_api/build:/home/dsun/offworld/swarm-robotic-mining/dev_ws/src/bot_overseer_api:/home/dsun/offworld/swarm-robotic-mining/dev_ws/src/bot_database:/home/dsun/offworld/swarm-robotic-mining/dev_ws/src/bot_derived_tm:/home/dsun/offworld/swarm-robotic-mining/dev_ws/src/bot_events:/home/dsun/offworld/swarm-robotic-mining/dev_ws/src/offworld-ur-interface
export GAZEBO_MODEL_PATH=/home/dsun/swarm-robotic-mining/catkin_ws/src/bot_digger_gazebo/models:/home/dsun/swarm-robotic-mining/catkin_ws/src/bot_digger_gazebo/models:

# ROS
export ROS_MASTER_URI=http://localhost:11311
export ROS_HOSTNAME=localhost
source /home/dsun/swarm-robotic-mining/catkin_ws/devel/setup.bash --extend
