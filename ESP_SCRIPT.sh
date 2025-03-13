#!/bin/bash

function checkTTY(){
choise=$(ls -1 /dev | grep ttyUSB*)
line="${choise//$'\n'/ }"
eval "choices=($line)"
choices+=("re-check")
choices+=("exit")

select answer in "${choices[@]}"; do
  for item in "${choices[@]}"; do
    if [[ $item == $answer ]]; then
      break 2
    fi
  done
done

if [[ $answer == "re-check" ]]; then
	checkTTY
elif [[ $answer == "exit" ]]; then
	echo "Good Luck!"
	exit 0
else
	echo "Port selected ..."
fi
}

echo "Setting the Environment..."
. esp/esp-idf/export.sh
echo "Entering the folder."
cd esp-workspace/RTC_MS/

read -p "Would you like to start monitor a port? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || return

checkTTY
idf.py -p /dev/$answer monitor
