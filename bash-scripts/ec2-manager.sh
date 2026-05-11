#!/bin/bash

# EC2 Instance Manager
# Author: Clayton Acerbi Goncalves

INSTANCE_ID="i-0b9d39d84215dd4a6"


echo "EC2 Manager - Instance: $INSTANCE_ID"
echo "1) Start instance"
echo "2) Stop instance"
echo "3) Check status"
read -p "Choose an option: " option

case $option in
 1)
   echo "Starting instance..."
   aws ec2 start-instances --instance-ids $INSTANCE_ID
   ;;
 2)
   echo "Stopping instance..."
   aws ec2 stop-instances --instance-ids $INSTANCE_ID
   ;;
 3)
   echo "Checking status..."
   aws ec2 describe-instances --instance-ids $INSTANCE_ID \
   --query 'Reservations[*].Instances[*].[InstanceId,State.Name,PublicIpAddress]' \
   --output table
   ;;
 *)
   echo "Invalid option!"
   ;;
esac

