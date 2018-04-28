#! /bin/bash
IP_ADDRESS_Local=`ip addr show eth0 | awk '/inet/ {printf $2}' | cut -d/ -f1`
IP_ADDRESS_master="192.168.0.101"

export ROS_MASTER_URI=http://$IP_ADDRESS_master:11311
# export ROS_HOSTNAMW=$IP_ADDRESS_Local
export ROS_IP=$IP_ADDRESS_Local
