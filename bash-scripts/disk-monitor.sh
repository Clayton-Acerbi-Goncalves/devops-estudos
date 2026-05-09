#!/bin/bash

echo "####### DISK USAGE #######"
df -h

echo
echo "####### MEMORY USAGE #######"
free -h


echo
echo "####### .sh FILES  #######"
find . -name "*.sh" -type f | wc -l
