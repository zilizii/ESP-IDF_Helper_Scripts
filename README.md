# ESP-IDF_Helper_Scripts
For usage purpose I create some bash script to make my life easier

file : ESP_SCRIPT.sh
	Creates me an environment for the ESP-IDF in a specific location for a project
	
file : ESP_SPIFFS.sh [Path of folder where the files in] [name of the bin out]
	Create a 1M large binary for the SPIFFS data based on the files in the folder specfied
	
file : ESP_SPIFF_DOWNLOAD.sh [serial port] [Bin File name]
	Usage: bash [serial port] [Bin File name]
	Download the SPIFFS to the ESP32 Flash, partitions.cvs required to have storage part
