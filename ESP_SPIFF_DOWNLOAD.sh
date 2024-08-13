#!/bin/bash

display_usage() {
	echo -e  "Usage: $0 [serial port] [Bin File name]"
}


# if less than two arguments supplied, display usage
	if [[ $# -ne 2 ]]; then
		display_usage
		return
	fi

# check whether user had supplied -h or --help . If yes display usage
	if [[ ( $@ == "--help" ) ||  ( $@ == "-h" ) ]]; then
		display_usage
		return
	fi

echo "Stored ESP32 SPIFFs download to the chip"


serialPort="$1"
binFileName="$2"

parttool.py --port $serialPort write_partition --partition-name=storage --partition-subtype=spiffs --input $binFileName
