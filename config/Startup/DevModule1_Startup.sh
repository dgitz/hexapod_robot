#!/bin/bash
source /home/robot/catkin_ws/src/eROS/scripts/simple_logger.sh
log_message "Boot Script Started"

ifconfig wlan1 down # This device for some reason creates a second interface.  Remove it when we can and don't worry about it.

# PiTFT Display initialization
sudo chown robot /dev/fb0  # Set ownership on device fd
sudo chown robot:robot /sys/class/backlight/soc:backlight/brightness # Set ownership on backlight fd
echo "0" > /sys/class/backlight/soc\:backlight/brightness  # Disable backlight, to reduce power consumption.  Running the display node will enable the backlight as needed.

log_message "Boot Script Completed"

