#!/bin/bash


# Get the used memory in gigabytes
used_memory_gb=$(free -thg | grep Mem | awk '{print $3}' | tr -d Gi)

# Round the used memory to the nearest whole number
rounded_used_memory_gb=$(printf "%.0f" $used_memory_gb)

threshold=7

if (($rounded_used_memory_gb >= $threshold))
then
	echo "Warning you have hit your threshold"
else
	echo "you are fine"
fi 
