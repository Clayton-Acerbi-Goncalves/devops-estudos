#!/bin/bash

echo "==================================================="
echo "              PROCESS MONITOR                      "
echo "==================================================="
echo

echo "Processes running:"

ps -e --no-headers | wc -l
echo

echo "Nginx Status:"

if systemctl is-active --quiet nginx; then
   echo "Nginx is Running"
else
   echo "Nginx is not Running"
fi
echo

echo "Docker Status:"

if systemctl is-active --quiet docker; then
   echo "Docker is Running"
else
   echo "Docker is not Running"
fi
echo

echo "Top 3 memory-consuming processes:"

ps aux --sort=-%mem | head -n 4

