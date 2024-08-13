#!/bin/bash



. esp/esp-idf/export.sh
cd esp-workspace/RTC_MS/

read -p "Would you like to start monitor a port? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || return

ls /dev | grep ttyUSB
read -p "Enter your port " portname

idf.py -p /dev/$portname monitor




