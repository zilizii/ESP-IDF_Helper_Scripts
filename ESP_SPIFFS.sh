#!/bin/sh

dirPath="$1"
OutPut="$2"

python ~/esp/esp-idf/components/spiffs/spiffsgen.py 0x100000 $dirPath $OutPut
