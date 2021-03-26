#!/bin/bash
source /home/robot/catkin_ws/src/eROS/scripts/simple_logger.sh
log_message "Boot Script Started"

log_message "Setting up GPS Receiver..."
sudo systemctl stop gpsd.socket
sudo systemctl disable gpsd.socket
sudo gpsd /dev/serial0 -F /var/run/gpsd.sock
log_message  `gpspipe -r -n 30 | grep GPRMC`

log_message "Boot Script Completed"

