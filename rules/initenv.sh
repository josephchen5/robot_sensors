#!/bin/bash
echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60", MODE:="0666", GROUP:="dialout",  SYMLINK+="ydlidar"' >/etc/udev/rules.d/ydlidar.rules
echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="1546", ATTRS{idProduct}=="01a8", MODE:="0666", GROUP:="dialout",  SYMLINK+="ublox_gps"' >/etc/udev/rules.d/UBlox_GPS.rules
echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", MODE:="0666", GROUP:="dialout",  SYMLINK+="razor_imu_10736"' >/etc/udev/rules.d/razor_imu_10736.rules
echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="26ac", ATTRS{idProduct}=="0011", MODE:="0666", GROUP:="dialout",  SYMLINK+="px4"' >/etc/udev/rules.d/px4.rules
echo  'KERNEL=="ttyUSB*", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", MODE:="0666", GROUP:="dialout",  SYMLINK+="nano"' >/etc/udev/rules.d/arduino_NANO.rules
echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="2341", ATTRS{idProduct}=="0043", MODE:="0666", GROUP:="dialout",  SYMLINK+="uno"' >/etc/udev/rules.d/arduino_UNO.rules
echo  'KERNEL=="ttyACM*", ATTRS{idVendor}=="152a", ATTRS{idProduct}=="80c1", MODE:="0666", GROUP:="dialout",  SYMLINK+="bno055_imu"' >/etc/udev/rules.d/Bosch_bno055_usb_stick.rules



sleep 2
service udev restart
