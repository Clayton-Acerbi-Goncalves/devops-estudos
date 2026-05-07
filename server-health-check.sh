#!/bin/bash

# Server Health Check Script
# Author: Clayton Acerbi Goncalves

echo "=============================="
echo "   SERVER HEALTH CHECK"
echo "   $(date)"
echo "=============================="

echo ""
echo "--- DISK USAGE ---"
df -h | grep -v tmpfs | grep -v none | tail -1

echo ""
echo "--- MEMORY USAGE ---"
free -h | grep Mem

echo ""
echo "--- NGINX STATUS ---"
systemctl is-active nginx

echo ""
echo "--- UPTIME ---"
uptime

echo "=============================="
echo "Health check completed!"
echo "=============================="
